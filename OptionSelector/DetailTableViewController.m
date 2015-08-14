//
//  DetailTableViewController.m
//  OptionSelector
//
//  Created by Eric Sze on 8/11/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "DetailTableViewController.h"

@interface DetailTableViewController ()

@end

@implementation DetailTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

//- (void)didReceiveMemoryWarning {
//    [super didReceiveMemoryWarning];
//    // Dispose of any resources that can be recreated.
//}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    // Return the number of rows in the section.
    return self.category.options.count;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    self.category.selection = self.category.options[indexPath.row];
    [self.delegate DetailTableViewController:self didSelectType:self.category];
    
    
    // create NSArray for table view cells, name array anything and set the table view's visible cells to that created NSArray
    NSArray *indicies = [tableView visibleCells];
    
    // loop through # of cells (.count) for checkmarks, if tmp cells are not checked, no checkmarks
    for (int i = 0; i < indicies.count; i++) {
        UITableViewCell *tmp = indicies[i];
        UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
        if (tmp == cell) {
            cell.accessoryType = UITableViewCellAccessoryCheckmark;
        }
        else {
            tmp.accessoryType = UITableViewCellAccessoryNone;
        }
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"detailIdentifier" forIndexPath:indexPath];
    
    // create NSString variable to hold category's options for each row
    NSString *name;
    // set name to category's options from mutable array to each row
    name = self.category.options[indexPath.row];
    // display textLabel for each cell to NSString variable
    cell.textLabel.text = name;
    
    // if name is equal to the selected cell's string, give it a checkmark
    if ([name isEqualToString:self.category.selection]) {
        cell.accessoryType = UITableViewCellAccessoryCheckmark;
    }
    
    return cell;
}

@end
