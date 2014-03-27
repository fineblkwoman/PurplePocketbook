//
//  RSStateManager.m
//  RelationshipSurvey
//
//  Created by Rusty Zarse on 1/28/14.
//
//

#import "RSStateManager.h"
#import "Question.h"

@interface RSStateManager ()
{
    NSManagedObjectContext *moc;
}
@end

@implementation RSStateManager
@synthesize questions;

- (void)populateQuestionSet{
    NSFetchRequest *fetchRequest = [[NSFetchRequest alloc] initWithEntityName:NSStringFromClass([Question class])];
    // Configure the request's entity, and optionally its predicate.
    NSSortDescriptor *sortDescriptor = [[NSSortDescriptor alloc] initWithKey:@"sortOrder" ascending:YES];
    NSArray *sortDescriptors = [[NSArray alloc] initWithObjects:sortDescriptor, nil];
    [fetchRequest setSortDescriptors:sortDescriptors];

    NSError *error;
    NSArray *results = [moc executeFetchRequest:fetchRequest error:&error];
    self.questions = [NSOrderedSet orderedSetWithArray:results];
}

- (id)initWithManagedObjectContext:(NSManagedObjectContext*)managedObjectContext{
    self = [super init];
    if (self) {
        moc = managedObjectContext;
        [self populateQuestionSet];
    }
    return self;
}

- (void)populateInitialData{
    NSError* err = nil;
    NSString* dataPath = [[NSBundle mainBundle] pathForResource:@"startupData" ofType:@"json"];
    NSArray* startupQuestions = [NSJSONSerialization JSONObjectWithData:[NSData dataWithContentsOfFile:dataPath]
                                                     options:kNilOptions
                                                       error:&err];
    //NSLog(@"Imported Questions: %@", startupQuestions);
    
    [startupQuestions enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        Question *question = [NSEntityDescription
                              insertNewObjectForEntityForName:NSStringFromClass([Question class])
                              inManagedObjectContext:moc];
        question.questionText = [obj objectForKey:@"questionText"];
        question.sortOrder = [obj objectForKey:@"sortOrder"];
        // with alot of data, saving in the loop might be slow but it could help troubleshoot individual record insert issues
        [self saveState];
    }];
    
    [self populateQuestionSet];
 
    
}

- (void)saveState{
    NSError *error;
    if (![moc save:&error]) {
        //NSLog(@"Whoops, couldn't save: %@", [error localizedDescription]);
    }
}

@end
