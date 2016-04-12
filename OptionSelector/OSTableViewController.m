//
//  OSTableViewController.m
//  OptionSelector
//
//  Created by Natalia Estrella on 8/9/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "OSTableViewController.h"
#import "OSDetailLIstTableViewController.h"
#import "CQCategory.h"


@interface OSTableViewController ()

@end

@implementation OSTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    CQCategory *planetCategory = [[CQCategory alloc] init];
    
    planetCategory.name = @"Planet";
    planetCategory.options = @[@"Sun",
                              @"Mercury",
                              @"Venus",
                              @"Earth",
                              @"Mars",
                              @"Jupiter",
                              @"Saturn",
                              @"YourAnus",
                              @"Neptune",
                              @"Pluto?"];

    
    CQCategory *treatCategory = [[CQCategory alloc] init];
    
    treatCategory.name = @"Treat";
    treatCategory.options = @[@"coooookie crisp",
                              @"cake",
                              @"ice cream",
                              @"day off"];
    
   
    CQCategory *carsCategory = [[CQCategory alloc] init];
    
    carsCategory.name = @"Cars";
    carsCategory.options = @[@"clown car",
                             @"party bus",
                             @"cheese bus",
                             @"batmobile",
                             @"dump truck"];
    
//Array of CQCategory Objects
    self.categoryObjects = @[planetCategory, treatCategory, carsCategory];
    [self.tableView reloadData];
}

-(void)viewWillAppear:(BOOL)animated {
    [self.tableView reloadData];
}


#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return self.categoryObjects.count;
}


 - (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
 UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"reuseIdentifier" forIndexPath:indexPath];
     
     //you only have one section
     
     CQCategory *categoryObject = self.categoryObjects[indexPath.row];
     cell.textLabel.text = categoryObject.name;
     
     cell.detailTextLabel.text = categoryObject.selection;

     return cell;
 }

 #pragma mark - Navigation
 
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {

// Get the new view controller using [segue destinationViewController].
// Pass the selected object to the new view controller.
     
     
     NSIndexPath *selectedIndexPath = [self.tableView indexPathForSelectedRow];
//now get model:CqCategory:data
     
     CQCategory *categoryObject = self.categoryObjects[selectedIndexPath.row];
     
     OSDetailLIstTableViewController *detailVC = segue.destinationViewController;
    
     
     detailVC.category = categoryObject;
     
    
     //we need to return the list of values associated witht he key selected.

}


@end
