//
//  StayingSafeViewController.m
//  The Purple PocketBook
//
//  Created by Alicia MacBook Pro on 1/21/14.
//  Copyright (c) 2014 Alicia MacBook Pro. All rights reserved.
//

#import "StayingSafeViewController.h"



@interface StayingSafeViewController ()

@end

@implementation StayingSafeViewController

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

    [[UINavigationBar appearance] setTintColor:[UIColor blackColor]];
    
    
        self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"ppbackground.png"]];
    
    UIBarButtonItem *shareItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAction target:self action:nil];
    
    NSArray *actionButtonItems = @[shareItem];
    self.navigationItem.rightBarButtonItems = actionButtonItems;
    
    self.StayingSafeLabel.text = _safe.stayingSafeTitle;
    self.StayingSafeTextView.text = _safe.stayingSafeDetail;
    _StayingSafeTextView.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"ppbackground.png"]];
   
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
