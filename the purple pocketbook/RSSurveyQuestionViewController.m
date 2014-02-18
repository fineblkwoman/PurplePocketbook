//
//  RSSurveyQuestionViewController.m
//  RelationshipSurvey
//
//  Created by Rusty Zarse on 1/28/14.
//
//

#import "RSSurveyQuestionViewController.h"
#import "RSSurveyResultsViewController.h"
#import "SWRevealViewController.h"
#import "PPAppDelegate.h"

#import "Question.h"

@interface RSSurveyQuestionViewController ()
@property (strong, nonatomic) IBOutlet UITextView *QuestionTextView;
@property (strong, nonatomic) Question *question;
@end

@implementation RSSurveyQuestionViewController
@synthesize questionIndex;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
            }
    return self;
}


RSStateManager *_stateManager;
- (RSStateManager *)stateManager{
    if (_stateManager == nil) {
        // I'm not a fan of making the view controller aware of, and dependent on, the app delegate.
        // But in the interest of making it work witout major changes, we'll grab the moc from the app delegate
        
        PPAppDelegate *appDelegate = (PPAppDelegate *)[[UIApplication sharedApplication] delegate];
        _stateManager = [[RSStateManager alloc] initWithManagedObjectContext:appDelegate.managedObjectContext];
        
        // check whether the data has been loaded
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        if (![defaults boolForKey:@"dataInitialized"]){
            // delegate responsibility for loading data to the state manager
            [_stateManager populateInitialData];
            [defaults setBool:YES forKey:@"dataInitialized"];
            [defaults synchronize];
        }
    }
    return _stateManager;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    _sidebarButton.target = self.revealViewController;
    _sidebarButton.action = @selector(revealToggle:);
    _sidebarButton.tintColor = [UIColor colorWithWhite:0.96f alpha:0.2f];
  
    
    // load the current question
    self.question = [self.stateManager.questions objectAtIndex:self.questionIndex];
    // present the question text
    self.QuestionTextView.text = self.question.questionText;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)prepareForNextQuestionWithAnswer:(NSString *)answer andSegue:(UIStoryboardSegue *)segue {
    
    
    // here: record the response.
    
    self.question.answerText = answer;
    [self.stateManager saveState];
    
    RSSurveyQuestionViewController *nextVC = (RSSurveyQuestionViewController *)segue.destinationViewController;
    nextVC.questionIndex = ++self.questionIndex;
    nextVC.stateManager = self.stateManager;
    
    if (nextVC.questionIndex == self.stateManager.questions.count) {
        
        // this was the last question, present the results
        nextVC.questionIndex = 0;
        nextVC.stateManager = nil;
        
        [self performSegueWithIdentifier: @"surveyResults" sender:self];
        
    }

}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if( [segue.identifier compare:@"surveyResults"] != NSOrderedSame ){
        // button was tapped, determine which
        UIButton *button = (UIButton *)sender;
        NSString *buttonText = button.titleLabel.text;
        [self prepareForNextQuestionWithAnswer:buttonText andSegue:segue];
    }else{
        RSSurveyResultsViewController *nextVC = (RSSurveyResultsViewController *)segue.destinationViewController;
        nextVC.stateManager = self.stateManager;
    }

}
@end
