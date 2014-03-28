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

@interface RSSurveyQuestionViewController ()
@property NSUInteger score;
@property NSUInteger index;

@property NSArray *questions;

@end

@implementation RSSurveyQuestionViewController


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
            }
    return self;
}

- (void)viewWillAppear:(BOOL)animated {
    self.questions = @[@"Have you stopped seeing your friends or family because of your partner's behavior?",
                       @"Does your partner's behavior make you feel as if you are wrong?",
                       @"Do you try to please your partner rather than yourself in order to avoid being hurt?",
                       @"Does your partner keep you from going out or doing things that you want to do?",
                       @"Do you feel that nothing you do is ever good enough for your partner?",
                       @"Does your partner say that if you try to leave him or her, you will never see your children again?",
                       @"Does your partner say that if you try to leave, he or she will kill himself or herself or you?",
                       @"Do you lie to your family, friends and doctor about your bruises, cuts and scratches?",
                       @"Do you get anxious or nervous when you have to relay 'bad news' to your partner?",
                       @"Does your partner sometimes embarass you or criticize you in front of others?",
                       @"Do you sometimes change your plans or cancel outings to avoid your partner's reaction?",
                       @"Does your partner check up on what you have been doing, and not believe your answers?"];
    
	self.questionTextBox.text = [self.questions objectAtIndex:0];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    _sidebarButton.target = self.revealViewController;
    _sidebarButton.action = @selector(revealToggle:);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if( [segue.identifier isEqualToString:@"surveyResults"]){
        RSSurveyResultsViewController *nextVC = (RSSurveyResultsViewController *)segue.destinationViewController;
        //nextVC.stateManager = self.stateManager;
        nextVC.score = self.score;
    }

}

- (IBAction)answerButtonClicked:(id)sender {
    UIButton *button = (UIButton*)sender;
    if ([button.titleLabel.text isEqualToString:@"Sometimes"]) {
        self.score += 1;
        
    } else if ([button.titleLabel.text isEqualToString:@"Regularly"]) {
        self.score += 2;
    }
    
    if (self.index < 11) {
        self.index +=1;
        self.questionTextBox.text = [self.questions objectAtIndex:self.index];
    } else {
        [self performSegueWithIdentifier:@"surveyResults" sender:self];
    }
    
}
@end
