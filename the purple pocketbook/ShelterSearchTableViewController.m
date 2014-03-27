//
//  ShelterSearchTableViewController.m
//  the purple pocketbook
//
//  Created by Alicia MacBook Pro on 3/18/14.
//  Copyright (c) 2014 Alicia MacBook Pro. All rights reserved.
//

#import "ShelterSearchTableViewController.h"
#import "SWRevealViewController.h"
#import "ShelterSearchTableViewCell.h"
#import "Cities.h"

@interface ShelterSearchTableViewController ()  

@property (weak, nonatomic) IBOutlet UITextView *hotlineNumber;


@end

@implementation ShelterSearchTableViewController

{
    
    NSArray *cities;
    NSArray *searchResults;
}

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    [[UINavigationBar appearance] setTintColor:[UIColor blackColor]];
    

    self.hotlineNumber.dataDetectorTypes = UIDataDetectorTypePhoneNumber;
    
    _sidebarButton.target = self.revealViewController;
    _sidebarButton.action = @selector(revealToggle:);
    //_sidebarButton.tintColor = [UIColor colorWithWhite:0.96f alpha:0.2f];
    
    
    Cities *city0 = [Cities new];
    city0.cityName = @"Albany";
    city0.shelterName = @"Liberty House of Albany, Inc.";
    city0.hotlineNumber = @"(229) 439-7065";
    
    Cities *city1 = [Cities new];
    city1.cityName = @"Athens";
    city1.shelterName = @"Project Safe, Inc.";
    city1.hotlineNumber = @"(706) 543-3331";
    
    Cities *city2 = [Cities new];
    city2.cityName = @"Atlanta";
    city2.shelterName = @"Partnership Against Domestic Violence, Inc.";
    city2.hotlineNumber = @"(404) 873-1766";
    
    Cities *city3 = [Cities new];
    city3.cityName = @"Augusta";
    city3.shelterName = @"Safe Homes of Augusta, Inc.";
    city3.hotlineNumber = @"(706) 736-2499";
    
    Cities *city4 = [Cities new];
    city4.cityName = @"Blairsville";
    city4.shelterName = @"Support in Abusive Family Emergencies, Inc.";
    city4.hotlineNumber = @"(706) 379-3000";
    
    Cities *city5 = [Cities new];
    city5.cityName = @"Blue Ridge";
    city5.shelterName = @"North Georgia Mountain Crisis";
    city5.hotlineNumber = @"(706) 632-8400";
    
    Cities *city6 = [Cities new];
    city6.cityName = @"Brunswick";
    city6.shelterName = @"Glynn Community Crisis";
    city6.hotlineNumber = @"(912) 264-4357";
    
    Cities *city7 = [Cities new];
    city7.cityName = @"Canton";
    city7.shelterName = @"Cherokee Family Violence";
    city7.hotlineNumber = @"(770) 479-1703";
    
    Cities *city8 = [Cities new];
    city8.cityName = @"Carrollton";
    city8.shelterName = @"Carroll County Emergency Shelter, Inc.";
    city8.hotlineNumber = @"(770) 834-1141";
    
    Cities *city9 = [Cities new];
    city9.cityName = @"Cartersville";
    city9.shelterName = @"Christian League for Battered Women, Inc. (Tranquility House)";
    city9.hotlineNumber = @"(770) 386-8779";
    
    Cities *city10 = [Cities new];
    city10.cityName = @"Cedartown";
    city10.shelterName = @"Polk County Women's Shelter, Inc.";
    city10.hotlineNumber = @"(770) 749-9330";
    
    Cities *city11 = [Cities new];
    city11.cityName = @"Clayton";
    city11.shelterName = @"Fight Abuse in the Home (FAITH), Inc.";
    city11.hotlineNumber = @"(888) 782-1338";
    
    Cities *city12 = [Cities new];
    city12.cityName = @"Columbus";
    city12.shelterName = @"Columbus Alliance for Battered Women, Inc.";
    city12.hotlineNumber = @"(706) 324-3850";
    
    Cities *city13 = [Cities new];
    city13.cityName = @"Conyers";
    city13.shelterName = @"Project Renewal Domestic Violence Intervention Program, Inc.";
    city13.hotlineNumber = @"(770) 860-1666";
    
    Cities *city14 = [Cities new];
    city14.cityName = @"Cornelia";
    city14.shelterName = @"Circle of Hope, Inc.";
    city14.hotlineNumber = @"(706) 776-4673";
    
    Cities *city15 = [Cities new];
    city15.cityName = @"Cumming";
    city15.shelterName = @"Forsyth County Family Haven, Inc.";
    city15.hotlineNumber = @"(770) 887-1121";
    
    Cities *city16 = [Cities new];
    city16.cityName = @"Dahlonega";
    city16.shelterName = @"NOA's Ark, Inc.";
    city16.hotlineNumber = @"(706) 864-1986";
    
    Cities *city17 = [Cities new];
    city17.cityName = @"Dalton";
    city17.shelterName = @"Northwest Georgia Family Crisis Center, Inc.";
    city17.hotlineNumber = @"(706) 278-5586";
    
    Cities *city18 = [Cities new];
    city18.cityName = @"Decatur";
    city18.shelterName = @"International Women's House, Inc.";
    city18.hotlineNumber = @"(770) 413-5557";
    
    Cities *city19 = [Cities new];
    city19.cityName = @"Decatur";
    city19.shelterName = @"Women's Resource Center to End Domestic Violence, Inc.";
    city19.hotlineNumber = @"(404) 688-9436";
    
    Cities *city20 = [Cities new];
    city20.cityName = @"Douglasville";
    city20.shelterName = @"S.H.A.R.E. House, Inc.";
    city20.hotlineNumber = @"(770) 489-7513";
    
    Cities *city21 = [Cities new];
    city21.cityName = @"Dublin";
    city21.shelterName = @"Women in Need of God's Shelter, Inc.";
    city21.hotlineNumber = @"(478) 272-8000";
    
    Cities *city22 = [Cities new];
    city22.cityName = @"Fayetteville";
    city22.shelterName = @"Fayette County Council on Domestic Violence";
    city22.hotlineNumber = @"(770) 460-1604";
    
    Cities *city23 = [Cities new];
    city23.cityName = @"Gainesville";
    city23.shelterName = @"Gateway House, Inc.";
    city23.hotlineNumber = @"(770) 536-5860";
    
    Cities *city24 = [Cities new];
    city24.cityName = @"Greensboro";
    city24.shelterName = @"Circle of Love Center, Inc.";
    city24.hotlineNumber = @"(706) 453-7135";
    
    Cities *city25 = [Cities new];
    city25.cityName = @"Hartwell";
    city25.shelterName = @"Northeast Georgia Council on Domestic Violence";
    city25.hotlineNumber = @"(706) 376-7111";
    
    Cities *city26 = [Cities new];
    city26.cityName = @"Hinesville";
    city26.shelterName = @"Tri-County Protective Agency, Inc.";
    city26.hotlineNumber = @"(912) 368-9200";
    
    Cities *city27 = [Cities new];
    city27.cityName = @"Jesup";
    city27.shelterName = @"Wayne County Protective Agency, Inc.";
    city27.hotlineNumber = @"(912) 588-0382";
    
    Cities *city28 = [Cities new];
    city28.cityName = @"Lafayette";
    city28.shelterName = @"Family Crisis Center of Walker, Dade, Catoosa, Chattooga Counties";
    city28.hotlineNumber = @"(706) 375-7630";
    
    Cities *city29 = [Cities new];
    city29.cityName = @"Lawrenceville";
    city29.shelterName = @"Partnership Against Domestic Violence, Inc.";
    city29.hotlineNumber = @"(770) 963-9799";
    
    Cities *city30 = [Cities new];
    city30.cityName = @"Macon";
    city30.shelterName = @"Crisis Line & Safe House";
    city30.hotlineNumber = @"(478) 738-9800";
    
    Cities *city31 = [Cities new];
    city31.cityName = @"Marietta";
    city31.shelterName = @"YWCA of Northwest Georgia";
    city31.hotlineNumber = @"(770) 427-3390";
    
    Cities *city32 = [Cities new];
    city32.cityName = @"McDonough";
    city32.shelterName = @"Flint Circuit Council on Family Violence, Inc. (Haven House)";
    city32.hotlineNumber = @"(770) 954-9229";
    
    Cities *city33 = [Cities new];
    city33.cityName = @"Morrow";
    city33.shelterName = @"Association on Battered Women of Clayton County, Inc. (Securus House)";
    city33.hotlineNumber = @"(770) 961-7233";
    
    Cities *city34 = [Cities new];
    city34.cityName = @"Rome";
    city34.shelterName = @"Hospitality House for Women, Inc.";
    city34.hotlineNumber = @"(706) 235-4673";
    
    Cities *city35 = [Cities new];
    city35.cityName = @"Savannah";
    city35.shelterName = @"Savannah Area Family Emergency";
    city35.hotlineNumber = @"(912) 629-8888";
    
    Cities *city36 = [Cities new];
    city36.cityName = @"St. Marys";
    city36.shelterName = @"Camden Community Crisis Center, Inc";
    city36.hotlineNumber = @"(912) 882-7858";
    
    Cities *city37 = [Cities new];
    city37.cityName = @"Statesboro";
    city37.shelterName = @"Citizens Against Violence, Inc.";
    city37.hotlineNumber = @"(912) 764-4605";
    
    Cities *city38 = [Cities new];
    city38.cityName = @"Thomasville";
    city38.shelterName = @"Halcyon Home, Inc.";
    city38.hotlineNumber = @"(229) 226-6666";
    
    Cities *city39 = [Cities new];
    city39.cityName = @"Tifton";
    city39.shelterName = @"Tifton Judicial Circuit Shelter, Inc. (Ruth's Cottage)";
    city39.hotlineNumber = @"(229) 387-9664";
    
    Cities *city40 = [Cities new];
    city40.cityName = @"Troup";
    city40.shelterName = @"Harmony House, Inc.";
    city40.hotlineNumber = @"(706) 885-1525";
    
    Cities *city41 = [Cities new];
    city41.cityName = @"Valdosta";
    city41.shelterName = @"Battered Women's Shelter, Inc. (The Haven)";
    city41.hotlineNumber = @"(229) 244-1765";
    
    Cities *city42 = [Cities new];
    city42.cityName = @"Vidalia";
    city42.shelterName = @"The Refuge Domestic Violence Shelter, Inc.";
    city42.hotlineNumber = @"(912) 538-9935";
    
    Cities *city43 = [Cities new];
    city43.cityName = @"Warner Robins";
    city43.shelterName = @"Warner Robins Salvation Army";
    city43.hotlineNumber = @"(478) 923-6294";
    
    Cities *city44 = [Cities new];
    city44.cityName = @"Waycross";
    city44.shelterName = @"Waycross Area Shelter d/b/a Magnolia House";
    city44.hotlineNumber = @"(912) 285-5850";
    
    Cities *city45 = [Cities new];
    city45.cityName = @"Winder";
    city45.shelterName = @"Peace Place, Inc.";
    city45.hotlineNumber = @"(770) 586-0927";
    
    cities = [NSArray arrayWithObjects:city0, city1, city2, city3, city4, city5, city6, city7, city8, city9, city10, city11, city12, city13, city14, city15, city16, city17, city18, city19, city20, city21, city22, city23, city24, city25, city26, city27, city28, city29, city30, city31, city32, city33, city34, city35, city36, city37, city38, city39, city40, city41, city42, city43, city44, city45, nil];
    
    
    
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    if (tableView == self.searchDisplayController.searchResultsTableView) {
        return [searchResults count];
    } else {
        return [cities count];
    }
    
}


- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 112;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"ShelterSearchTableViewCell";
    ShelterSearchTableViewCell *cell =(ShelterSearchTableViewCell *)[self.tableView dequeueReusableCellWithIdentifier:CellIdentifier];

    
    if (cell == nil) {
        cell = [[ShelterSearchTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    Cities *city = nil;
    if (tableView == self.searchDisplayController.searchResultsTableView) {
        city = [searchResults objectAtIndex:indexPath.row];
    } else {
        city = [cities objectAtIndex:indexPath.row];
    }
    
    
    cell.cityLabel.text = city.cityName;
    cell.shelterLabel.text = city.shelterName;
    cell.hotlineNumber.text = city.hotlineNumber;
  
    return cell;
}

- (void) filterContentForSearchText: (NSString*)searchText scope:(NSString*)scope
{
    
    NSPredicate *resultPredicate = [NSPredicate predicateWithFormat:@"cityName contains[c] %@", searchText];
    searchResults = [cities filteredArrayUsingPredicate:resultPredicate];
    
}

- (BOOL) searchDisplayController:(UISearchDisplayController *)controller shouldReloadTableForSearchString:(NSString *)searchString
{
    
    [self filterContentForSearchText:searchString scope:[[self.searchDisplayController.searchBar scopeButtonTitles] objectAtIndex:[self.searchDisplayController.searchBar selectedScopeButtonIndex]]];
    
    return YES;
    
}


@end
