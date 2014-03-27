//
//  TechSecurityViewController.m
//  The Purple PocketBook
//
//  Created by Alicia MacBook Pro on 1/22/14.
//  Copyright (c) 2014 Alicia MacBook Pro. All rights reserved.
//

#import "TechSecurityViewController.h"



@interface TechSecurityViewController ()

@end

@implementation TechSecurityViewController

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
    
    
    self.DVTechSecurityLabel.text = _dvTechSecurity.techTitle;
    self.DVTechSecurityTextView.text = _dvTechSecurity.techDetail;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
