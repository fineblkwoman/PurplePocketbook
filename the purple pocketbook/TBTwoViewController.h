//
//  TBTwoViewController.h
//  the purple pocketbook
//
//  Created by Alicia MacBook Pro on 2/13/14.
//  Copyright (c) 2014 Alicia MacBook Pro. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TBTwoViewController : UIViewController <UITableViewDelegate, UITableViewDataSource, UIActionSheetDelegate>



@property (weak, nonatomic) IBOutlet UITableView *tblFiles;

@end
