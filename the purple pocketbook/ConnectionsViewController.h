//
//  ConnectionsViewController.h
//  the purple pocketbook
//
//  Created by Alicia MacBook Pro on 2/13/14.
//  Copyright (c) 2014 Alicia MacBook Pro. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MultipeerConnectivity/MultipeerConnectivity.h>


@interface ConnectionsViewController : UIViewController <MCBrowserViewControllerDelegate, UITextFieldDelegate, UITableViewDelegate, UITableViewDataSource>


@property (weak, nonatomic) IBOutlet UITextField *txtName;
@property (weak, nonatomic) IBOutlet UISwitch *swVisible;
@property (weak, nonatomic) IBOutlet UITableView *tblConnectedDevices;
@property (weak, nonatomic) IBOutlet UIButton *btnDisconnect;


- (IBAction)browseForDevices:(id)sender;
- (IBAction)toggleVisibility:(id)sender;
- (IBAction)disconnect:(id)sender;

@end
