//
//  TBOneViewController.h
//  the purple pocketbook
//
//  Created by Alicia MacBook Pro on 2/13/14.
//  Copyright (c) 2014 Alicia MacBook Pro. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TBOneViewController : UIViewController <UITextFieldDelegate>


@property (weak, nonatomic) IBOutlet UITextField *txtMessage;
@property (weak, nonatomic) IBOutlet UITextView *tvChat;

- (IBAction)sendMessage:(id)sender;
- (IBAction)cancelMessage:(id)sender;


@end
