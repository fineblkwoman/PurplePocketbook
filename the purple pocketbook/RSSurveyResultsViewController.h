//
//  RSSurveyResultsViewController.h
//  RelationshipSurvey
//
//  Created by Rusty Zarse on 1/29/14.
//
//

#import <UIKit/UIKit.h>
#import "RSStateManager.h"

@interface RSSurveyResultsViewController : UIViewController

@property(strong,nonatomic) RSStateManager  *stateManager;

@property (weak, nonatomic) IBOutlet UIBarButtonItem *sidebarButton;

- (IBAction)quitQuiz:(id)sender;
@end
