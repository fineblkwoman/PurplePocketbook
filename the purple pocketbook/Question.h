//
//  Question.h
//  RelationshipSurvey
//
//  Created by Rusty Zarse on 1/28/14.
//
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@interface Question : NSManagedObject

@property (nonatomic, retain) NSString * questionText;
@property (nonatomic, retain) NSString * answerText;
@property (nonatomic, retain) NSNumber * sortOrder;

@end
