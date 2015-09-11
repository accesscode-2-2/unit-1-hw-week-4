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
//@property (nonatomic) category MODEL;
@property (nonatomic) CQCategory *displayCategory;
@end

@implementation AllCategoriesTableViewController


- (void)initializeData
{
    CQCategory *PhoneRingtone = [[CQCategory alloc] init];
    CQCategory *SoundProfile = [[CQCategory alloc] init];
    CQCategory *IncomingCallVibration = [[CQCategory alloc] init];
    CQCategory *FontColor = [[CQCategory alloc] init];
    CQCategory *BackgroundImage = [[CQCategory alloc] init];

    
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
    
    FontColor.name = @"Font Color";
    FontColor.options = @[
                                @"Blue",
                                @"Green",
                                @"Red",
                                @"Yellow"
                                ];
    
    BackgroundImage.name = @"Background Image";
    BackgroundImage.options = @[
                                @"Rainy Day",
                                @"Snowflakes",
                                @"Yellow flower",
                                @"Digital waves",
                                @"Abstract yellow",
                                @"Orange View",
                                @"Art"
                                ];
    
    
    
    
    self.allCategories   = @[PhoneRingtone, SoundProfile, IncomingCallVibration, FontColor, BackgroundImage];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initializeData];
    self.navigationItem.title = @"🔅Settings🔅";
//     if ([self.category.selection isEqualToString: @"Yellow" ]) {
//    //   self.navigationController.view.backgroundColor = [UIColor yellowColor];
//    self.tableView.backgroundColor = [UIColor yellowColor];
//    //}
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
    
    
    
    
    cell.backgroundColor = [UIColor clearColor];
    
    
    if ([self.displayCategory.selection isEqualToString: @"Rainy Day" ]) {
        [self backgroundImageChanged:@"rainyDay"];
        
    }
    else if ([self.displayCategory.selection isEqualToString: @"Snowflakes" ]) {
        [self backgroundImageChanged:@"snowflakes"];
    }
    else if ([self.displayCategory.selection isEqualToString: @"Yellow flower" ]) {
        [self backgroundImageChanged:@"yellowFlower"];
    }
    else if ([self.displayCategory.selection isEqualToString: @"Abstract yellow" ]) {
        [self backgroundImageChanged:@"abstract-yellow-wallpaper"];
    }
    else if ([self.displayCategory.selection isEqualToString: @"Digital waves" ]) {
        [self backgroundImageChanged:@"digital-waves-background"];
    }
    else if ([self.displayCategory.selection isEqualToString: @"Art" ]) {
        [self backgroundImageChanged:@"art"];
    }
    else if ([self.displayCategory.selection isEqualToString: @"Orange View" ]) {
        [self backgroundImageChanged:@"orange"];
    }
 
    
}



-(void) backgroundImageChanged : (NSString *)name {
 
    UIGraphicsBeginImageContext(self.view.frame.size);
    [[UIImage imageNamed:name] drawInRect:self.view.bounds];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    self.view.backgroundColor = [UIColor colorWithPatternImage:image];
 
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
    self.displayCategory = [self.allCategories objectAtIndex:indexPath.row];
    
    cell.textLabel.text = self.displayCategory.name;
    
    cell.detailTextLabel.text = self.displayCategory.selection;
 
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
