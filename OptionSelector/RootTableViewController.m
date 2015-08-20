//
//  RootTableViewController.m
//  OptionSelector
//
//  Created by Shena Yoshida on 8/10/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "RootTableViewController.h"
#import "CQCategory.h" // imported cqcategory
#import "DetailTableViewController.h" // imported detail view

@interface RootTableViewController ()

@property (nonatomic) NSArray *categories; // for entire array of category data
@property (nonatomic) NSInteger itemChosen;

@end

@implementation RootTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"LISTS OF THINGS!!"; // add a title
    
    CQCategory *dogCategory = [[CQCategory alloc] initWithCategoryType:@"Dog"];
    CQCategory *foodCategory = [[CQCategory alloc] initWithCategoryType:@"Food"];
    CQCategory *planetCategory = [[CQCategory alloc] initWithCategoryType:@"Planet"];
    
    self.categories = @[dogCategory, foodCategory, planetCategory];
    
}

// reload screen with new data
- (void) viewWillAppear:(BOOL)animated {
    [self.tableView reloadData]; // this reloads table view
    [super viewWillAppear:animated]; // added
}

// set number of sections
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

// set number of rows in each section
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.categories.count; // rows = number of items in my array
}

// populate table view cell(s), add reusablecellidentifier to main.storyboard/rootVC/cell
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"RootTableViewIdentifier" forIndexPath:indexPath];
    
    CQCategory *thisCategory = [self.categories objectAtIndex:indexPath.row]; // create CQCategory instance that = the general categories, the indexes and each individual row
    
    cell.textLabel.text = thisCategory.name; // set text label on each cell to "thisCategory" (each individual row)
    
    if (thisCategory.selection.length == 0) { // this forces the cell to show the right label the first time...
        cell.detailTextLabel.text = @" ";
    } else {
        cell.detailTextLabel.text = thisCategory.selection; // this adds selection info to main table view
    }
    
    return cell; // return the contents of each cell
}

// segue to next table view controller
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    DetailTableViewController *detailTableViewController = segue.destinationViewController;
    
    // don't forget to set "" in the main storyboard
    if ([segue.identifier isEqualToString:@"rootToDetailView"]) {
        
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow]; // index path in table view is selected
        CQCategory *selectedCategory = [self.categories objectAtIndex:indexPath.row]; // give me corresponding categoy
        detailTableViewController.category = selectedCategory; // detailtableview to display category contents that were selected

    }
}






@end
