//
//  SheltersLocationViewController.h
//  The Purple PocketBook
//
//  Created by Alicia MacBook Pro on 1/30/14.
//  Copyright (c) 2014 Alicia MacBook Pro. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>
#import <MapKit/MapKit.h>
#import "ResultsTableViewController.h"

@interface SheltersLocationViewController : UIViewController <CLLocationManagerDelegate, MKMapViewDelegate>

@property (strong, nonatomic) NSMutableArray *matchingItems;
@property (nonatomic, strong) IBOutlet MKMapView *mapView;
@property (strong, nonatomic) IBOutlet UITextField *searchText;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *sidebarButton;

- (IBAction)textFieldReturn:(id)sender;


@end
