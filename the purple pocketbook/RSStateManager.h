//
//  RSStateManager.h
//  RelationshipSurvey
//
//  Created by Rusty Zarse on 1/28/14.
//
//

#import <Foundation/Foundation.h>

@interface RSStateManager : NSObject
@property (strong, nonatomic) NSOrderedSet *questions;
- (id)initWithManagedObjectContext:(NSManagedObjectContext*)managedObjectContext;
- (void)populateInitialData;
- (void)saveState;
@end
