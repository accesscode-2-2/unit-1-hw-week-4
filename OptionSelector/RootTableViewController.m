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

//@property (nonatomic) NSDictionary *itemList; // property for dictionary list
@property (nonatomic) NSArray *categories;
@property (nonatomic) NSInteger itemChosen;

@end

@implementation RootTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    CQCategory *category1 = [[CQCategory alloc]init];  // created instance of CQCategory class called *category1
    category1.name = @"Food"; // set properties
    category1.options = @[
                      @"cheeseburger",
                      @"milk",
                      @"eggs",
                      @"pickles"
                      ];
    category1.selection = @"";
    
    
    CQCategory *category2 = [[CQCategory alloc]init];
    category2.name = @"Dog";
    category2.options = @[
                          @"Lassie",
                          @"Beethoven",
                          @"Toto",
                          @"Porkchop",
                          @"Scooby Doo",
                          @"Wishbone",
                          @"Odie"
                          ];
    category2.selection = @"";
    
    
    CQCategory *category3 = [[CQCategory alloc]init];
    category3.name = @"Planet";
    category3.options = @[
                         @"Mercury",
                         @"Venus",
                         @"Earth",
                         @"Mars",
                         @"Jupiter",
                         @"Saturn",
                         @"Neptune",
                         @"Uranus",
                         @"Pluto"
                         ];
    category3.selection = @"";
    
    
    // set array of categories
    self.categories = @[
                        category1,
                        category2,
                        category3
                        ];
}

// reload screen with new data
- (void) viewWillAppear:(BOOL)animated {
    [self.tableView reloadData]; // this reloads table view
}

// set number of sections
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

// set number of rows
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.categories.count; // rows = number of items in the categories...
}

// populate table view cell(s)
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"RootTableViewIdentifier" forIndexPath:indexPath];
    
    CQCategory *thisCategory = [self.categories objectAtIndex:indexPath.row]; // CQCategory, give me the general category, the indexes and the individual rows
    cell.textLabel.text = thisCategory.name; // cell label text = the "names" of the index rows
    
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
