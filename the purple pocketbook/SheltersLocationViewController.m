//
//  SheltersLocationViewController.m
//  The Purple PocketBook
//
//  Created by Alicia MacBook Pro on 1/30/14.
//  Copyright (c) 2014 Alicia MacBook Pro. All rights reserved.
//

#import "SheltersLocationViewController.h"
#import <CoreLocation/CoreLocation.h>
#import "SWRevealViewController.h"
#import <MapKit/MapKit.h>


@interface SheltersLocationViewController () <CLLocationManagerDelegate, MKMapViewDelegate, UITextFieldDelegate>

@property (strong, nonatomic) CLLocationManager *manager;
@property (strong, nonatomic) IBOutlet UITextField *locationTitleField;



@end

@implementation SheltersLocationViewController
@synthesize mapView;



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

    
    [[UINavigationBar appearance] setTintColor:[UIColor blackColor]];
    
    
    _sidebarButton.target = self.revealViewController;
    _sidebarButton.action = @selector(revealToggle:);
    //_sidebarButton.tintColor = [UIColor colorWithWhite:0.96f alpha:0.2f];
    

    self.mapView.delegate = self;
    
    
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)mapView:(MKMapView *)mapView didUpdateUserLocation:(MKUserLocation *)userLocation
{
    
    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance (userLocation.coordinate, 800, 800);
    [self.mapView setRegion:[self.mapView regionThatFits:region] animated:YES];
    
    MKPointAnnotation *point = [[MKPointAnnotation alloc] init];
    point.coordinate = userLocation.coordinate;
    point.title = @"Where am I?";
    point.subtitle = @"I'm here !!!";
    
    [self.mapView addAnnotation:point];
    
}


- (IBAction)Location:(id)sender
{
    
    
}

- (IBAction)textFieldReturn:(id)sender
{
    [sender resignFirstResponder];
    [mapView removeAnnotations:[mapView annotations]];
    [self performSearch];
    
}

-(void) performSearch
{
    MKLocalSearchRequest *request = [[MKLocalSearchRequest alloc] init];
    request.naturalLanguageQuery = @"Domestic Violence Center";
    request.region = mapView.region;
    
    _matchingItems = [[NSMutableArray alloc] init];
    
    MKLocalSearch *search = [[MKLocalSearch alloc] initWithRequest:request];
    
    [search startWithCompletionHandler:^(MKLocalSearchResponse *response, NSError *error) {
        if (response.mapItems.count == 0)
            NSLog(@"No Matches");
        else
            for (MKMapItem *item in response.mapItems)
                {
                    
                    [_matchingItems addObject:item];
                    MKPointAnnotation *annotation = [[MKPointAnnotation alloc] init];
                    annotation.coordinate = item.placemark.coordinate;
                    annotation.title = item.name;
                    [mapView addAnnotation:annotation];
                    

                }
     }];
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    ResultsTableViewController *destination =
    [segue destinationViewController];
    
    destination.mapItems = _matchingItems;
}





@end
