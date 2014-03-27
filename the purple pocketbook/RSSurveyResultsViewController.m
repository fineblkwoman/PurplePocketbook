//
//  RSSurveyResultsViewController.m
//  RelationshipSurvey
//
//  Created by Rusty Zarse on 1/29/14.
//
//

#import "RSSurveyResultsViewController.h"
#import "SWRevealViewController.h"
#import "Question.h"

@interface RSSurveyResultsViewController ()

@property (strong, nonatomic) IBOutlet UILabel *scoreLabel;

@end

@implementation RSSurveyResultsViewController


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    
    _sidebarButton.target = self.revealViewController;
    _sidebarButton.action = @selector(revealToggle:);
    //_sidebarButton.tintColor = [UIColor colorWithWhite:0.96f alpha:0.2f];
    
    NSInteger score = 0;
    for( Question *question in self.stateManager.questions){
        if ([question.answerText compare:@"Regularly"] == NSOrderedSame) {
            score += 2;
        }else if([question.answerText compare:@"Sometimes"] == NSOrderedSame){
            score += 1;
        }
    }
    
    self.scoreLabel.text = [NSString stringWithFormat:@"%li", (long)score];
}

- (void)viewDidAppear:(BOOL)animated
{
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)quitQuiz:(id)sender
{
    
}



@end
