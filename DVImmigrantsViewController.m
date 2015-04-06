//
//  DVImmigrantsViewController.m
//  PurplePocketBook
//
//  Created by Alicia MacBook Pro on 10/7/14.
//  Copyright (c) 2014 Alicia MacBook Pro. All rights reserved.
//

#import "DVImmigrantsViewController.h"

@interface DVImmigrantsViewController ()

@end

@implementation DVImmigrantsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    [[UINavigationBar appearance] setTintColor:[UIColor blackColor]];
    
    self.ImmigrantLabel.text = _PPImmigrant.immigrantTitle;
    self.ImmigrantDetailTextView.text = _PPImmigrant.immigrantDetail;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
