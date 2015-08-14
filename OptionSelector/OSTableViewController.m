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
   
}

- (void)viewDidAppear:(BOOL)animated {
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
    
//     cell.detailTextLabel.text
//     cell.detailTextLabel.text = categoryObject.selction[indexPath.row];
     
     
 
 // Configure the cell...
 
     return cell;
 }
 

/*
 // Override to support conditional editing of the table view.
 - (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
 // Return NO if you do not want the specified item to be editable.
 return YES;
 }
 */

/*
 // Override to support editing the table view.
 - (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
 if (editingStyle == UITableViewCellEditingStyleDelete) {
 // Delete the row from the data source
 [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
 } else if (editingStyle == UITableViewCellEditingStyleInsert) {
 // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
 }
 }
 */




 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {

// Get the new view controller using [segue destinationViewController].
// Pass the selected object to the new view controller.
     
     
     NSIndexPath *selectedIndexPath = [self.tableView indexPathForSelectedRow];
//now get model:CqCategory:data
     
     CQCategory *categoryObject = self.categoryObjects[selectedIndexPath.row];
     
     OSDetailLIstTableViewController *detailVC = segue.destinationViewController;
    
     
     detailVC.category = categoryObject;
     
    
     //we need to return the list of values associated witht he key selected.
     

     
//in the pokemon project we turned the 
//     PKDetailViewController *detailVC = [segue destinationViewController];
//     detailVC.
//     detailVC.pokemonName = cell.textLabel.text;
//     detailVC.pokemonPhoto = cell.imageView.image;
     

}


@end
