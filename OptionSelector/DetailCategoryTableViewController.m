//
//  DetailCategoryTableViewController.m
//  OptionSelector
//
//  Created by Jason Wang on 8/15/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "DetailCategoryTableViewController.h"

@interface DetailCategoryTableViewController ()

@end

@implementation DetailCategoryTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}


#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.category.options.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"DetailViewIdentifier" forIndexPath:indexPath];
    
    NSString *categorySelected = self.category.options[indexPath.row];
    cell.textLabel.text = categorySelected;
    
    if (self.category.options[indexPath.row] == self.category.selected) {
        cell.accessoryType = UITableViewCellAccessoryCheckmark;
    } else {
        cell.accessoryType = UITableViewCellAccessoryNone;
    }
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(NSIndexPath *)indexPath {
    self.category.selected = self.category.options[indexPath.row];
    
    [self.tableView reloadData];
}


@end
