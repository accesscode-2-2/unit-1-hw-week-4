//
//  AllCategoriesTableViewController.m
//  OptionSelector
//
//  Created by Diana Elezaj on 8/13/15.
//  Copyright (c) 2015 Diana Elezaj. All rights reserved.
//

#import "AllCategoriesTableViewController.h"
#import "CQCategory.h"
#import "DetailsTableViewController.h"


@interface AllCategoriesTableViewController ()  
@property (nonatomic) NSArray *allCategories;

@end

@implementation AllCategoriesTableViewController

- (void)initializeData
{
    CQCategory *PhoneRingtone = [[CQCategory alloc] init];
    CQCategory *SoundProfile = [[CQCategory alloc] init];
    CQCategory *IncomingCallVibration = [[CQCategory alloc] init];
    CQCategory *BackgroundColor = [[CQCategory alloc] init];
    
    PhoneRingtone.name = @"Phone Ringtone ♫";
    PhoneRingtone.options = @[
                              @"Phone Ringing",
                              @"Vintage Phone Ringing",
                              @"Tongue Rolling",
                              @"Doorbell",
                              @"Two Tone Doorbell",
                              @"Telephone Ring"
                              ];
    
    SoundProfile.name = @"Sound Profile";
    SoundProfile.options = @[
                                 @"Sound",
                                 @"Vibrate Only",
                                 @"Silent"
                                 ];
    
    IncomingCallVibration.name = @"Incoming Call Vibration";
    IncomingCallVibration.options = @[
                                          @"Long Lasting",
                                          @"Rapid",
                                          @"Short repeated",
                                          @"Standartd",
                                          @"Ticktock"
                                          ];
    
    BackgroundColor.name = @"Background Color";
    BackgroundColor.options = @[
                                @"Blue",
                                @"Green",
                                @"Red",
                                @"Yellow"
                                ];
    
    self.allCategories   = @[PhoneRingtone, SoundProfile, IncomingCallVibration, BackgroundColor];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initializeData];
    self.navigationItem.title = @"🔅Settings🔅";
    
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    // set navigation bar's tint color when being shown
    self.navigationController.navigationBar.barTintColor = [UIColor colorWithRed:0.60 green:0.78 blue:0.95 alpha:1.0];
 }

- (void)viewDidAppear:(BOOL)animated {
    [self.tableView reloadData];
    
}



#pragma mark Cells color
- (void)tableView: (UITableView*)tableView
  willDisplayCell: (UITableViewCell*)cell
forRowAtIndexPath: (NSIndexPath*)indexPath
{
    cell.backgroundColor = indexPath.row % 2
    ? [UIColor colorWithRed:0.87 green:0.93 blue:0.98 alpha:1.0]
        : [UIColor whiteColor];
}






#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return self.allCategories.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CategorySelected" forIndexPath:indexPath];
    CQCategory *displayCategory = [self.allCategories objectAtIndex:indexPath.row];
    
    cell.textLabel.text = displayCategory.name;
    
    cell.detailTextLabel.text = displayCategory.selection;
    
    return cell;
}

#pragma mark - Navigation


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    DetailsTableViewController *vc = segue.destinationViewController;
    
    NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
    
    CQCategory *newCategory = [self.allCategories objectAtIndex:indexPath.row];
    vc.category = newCategory;
    
    vc.delegate = self;
}

@end
