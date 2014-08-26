//
//  CSponsorsViewController.h
//  PurplePocketBook
//
//  Created by Alicia MacBook Pro on 8/14/14.
//  Copyright (c) 2014 Alicia MacBook Pro. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CSponsorsViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIBarButtonItem *sidebarButton;

@property (weak, nonatomic) IBOutlet UIButton *PPLogo;
@property (weak, nonatomic) IBOutlet UIButton *eightDeep;
@property (weak, nonatomic) IBOutlet UIButton *monkeyPants;

- (IBAction)PPLogo:(id)sender;
- (IBAction)eightDeep:(id)sender;
- (IBAction)monkeyPants:(id)sender;

@end
