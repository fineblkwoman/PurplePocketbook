//
//  ResultsTableViewController.h
//  The Purple PocketBook
//
//  Created by Alicia MacBook Pro on 1/30/14.
//  Copyright (c) 2014 Alicia MacBook Pro. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import "ResultsTableCell.h"

@interface ResultsTableViewController : UITableViewController

@property (strong, nonatomic) NSArray *mapItems;

@property (weak, nonatomic) IBOutlet UIBarButtonItem *sidebarButton;

@end
