//
//  CQCategoryListTableViewController.m
//  OptionSelector
//
//  Created by Bereket  on 8/14/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "CQCategoryListTableViewController.h"
#import "CQCategory.h"
#import "CQOptionsListTableViewController.h"

@interface CQCategoryListTableViewController ()


@end

@implementation CQCategoryListTableViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    CQCategory* MysteriousMagicalPlaces= [[CQCategory alloc] init];
    
    MysteriousMagicalPlaces.name= @"MysteriousLocations";
    MysteriousMagicalPlaces.options=@[@"Forbidden Forest",@"Department of Mysteries",@"Hogwarts",@"Godrics Hollow",@"Gringotts"];
    MysteriousMagicalPlaces.selection= @" ";
   
    
    
    CQCategory* HarryPotter= [[CQCategory alloc] init];
   
    HarryPotter.name= @"HarryPotter";
    HarryPotter.options=@[@"Albus Dumbledore",@"Tom Riddle",@"Nicolas Flamel",@"Beedle",@"Garrick Ollivander"];
    HarryPotter.selection= @" ";
   
    
    
    CQCategory* MagicalItems= [[CQCategory alloc] init];
   
    MagicalItems.name= @"MagicalItems";
    MagicalItems.options=@[@"Elder Wand",@"Ressurection Stone",@"Invisibility Clock",@"Time Turner",@"Philosophers Stone"];
    MagicalItems.selection= @" ";
    
    self.listOfCategories = @[MysteriousMagicalPlaces, HarryPotter, MagicalItems];
    
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)viewDidAppear:(BOOL)animated {
    [self.tableView reloadData];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return self.listOfCategories.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CQCategoriesIdentifier" forIndexPath:indexPath];
    
    // Configure the cell...
    CQCategory* myCategory= self.listOfCategories[indexPath.row];
    cell.textLabel.text = myCategory.name;
    cell.detailTextLabel.text= myCategory.selection;
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

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    NSIndexPath *pathFromCategoryToOptions= [self.tableView indexPathForSelectedRow];
    CQCategory* myCategory= self.listOfCategories[pathFromCategoryToOptions.row];
    
    CQOptionsListTableViewController *detailedCategoryList= segue.destinationViewController;
    detailedCategoryList.someCategory= myCategory;

    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}

@end
