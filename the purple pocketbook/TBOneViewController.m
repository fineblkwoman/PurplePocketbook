//
//  TBOneViewController.m
//  the purple pocketbook
//
//  Created by Alicia MacBook Pro on 2/13/14.
//  Copyright (c) 2014 Alicia MacBook Pro. All rights reserved.
//

#import "TBOneViewController.h"
#import "PPAppDelegate.h"

@interface TBOneViewController ()

@property (nonatomic, strong) PPAppDelegate *appDelegate;

-(void)didReceiveDataWithNotification:(NSNotification *)notification;

-(void)sendMyMessage;

@end

@implementation TBOneViewController

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
    
    _appDelegate = (PPAppDelegate *)[[UIApplication sharedApplication] delegate];
    
    _txtMessage.delegate = self;
    
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(didReceiveDataWithNotification:)
                                                 name:@"MCDidReceiveDataNotification"
                                               object:nil];
    
    
}


-(void)didReceiveDataWithNotification:(NSNotification *)notification{
    MCPeerID *peerID = [[notification userInfo] objectForKey:@"peerID"];
    NSString *peerDisplayName = peerID.displayName;
    
    NSData *receivedData = [[notification userInfo] objectForKey:@"data"];
    NSString *receivedText = [[NSString alloc] initWithData:receivedData encoding:NSUTF8StringEncoding];
    
    [_tvChat performSelectorOnMainThread:@selector(setText:) withObject:[_tvChat.text stringByAppendingString:[NSString stringWithFormat:@"%@ wrote:\n%@\n\n", peerDisplayName, receivedText]] waitUntilDone:NO];
}

-(void)sendMyMessage{
    NSData *dataToSend = [_txtMessage.text dataUsingEncoding:NSUTF8StringEncoding];
    NSArray *allPeers = _appDelegate.mcManager.session.connectedPeers;
    NSError *error;
    
    [_appDelegate.mcManager.session sendData:dataToSend
                                     toPeers:allPeers
                                    withMode:MCSessionSendDataReliable
                                       error:&error];
    
    if (error) {
        NSLog(@"%@", [error localizedDescription]);
    }
    
    [_tvChat setText:[_tvChat.text stringByAppendingString:[NSString stringWithFormat:@"I wrote:\n%@\n\n", _txtMessage.text]]];
    [_txtMessage setText:@""];
    [_txtMessage resignFirstResponder];
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    [self sendMyMessage];
    return YES;
}

- (IBAction)sendMessage:(id)sender {
    [self sendMyMessage];
}

- (IBAction)cancelMessage:(id)sender {
    [_txtMessage resignFirstResponder];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
