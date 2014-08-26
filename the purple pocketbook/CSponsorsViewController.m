//
//  CSponsorsViewController.m
//  PurplePocketBook
//
//  Created by Alicia MacBook Pro on 8/14/14.
//  Copyright (c) 2014 Alicia MacBook Pro. All rights reserved.
//

#import "CSponsorsViewController.h"
#import "SWRevealViewController.h"

@interface CSponsorsViewController ()

@end

@implementation CSponsorsViewController

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
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)PPLogo:(id)sender
{
    
    [[UIApplication sharedApplication]openURL:[NSURL URLWithString:@"http://www.thepurplepocketbook.org"]];
    
}

- (IBAction)eightDeep:(id)sender
{
    
    [[UIApplication sharedApplication]openURL:[NSURL URLWithString:@"http://www.8deep.org/8deep.org/"]];
    
}

- (IBAction)monkeyPants:(id)sender
{
    
    [[UIApplication sharedApplication]openURL:[NSURL URLWithString:@"http://www.monkeypantsstudios.com"]];
    
}
@end
