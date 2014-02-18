//
//  RSSurveyQuestionViewController.h
//  RelationshipSurvey
//
//  Created by Rusty Zarse on 1/28/14.
//
//

#import <UIKit/UIKit.h>
#import "RSStateManager.h"

@interface RSSurveyQuestionViewController : UIViewController
@property(nonatomic) NSInteger questionIndex;
@property(strong,nonatomic) RSStateManager  *stateManager;

@property (weak, nonatomic) IBOutlet UIBarButtonItem *sidebarButton;

@end
