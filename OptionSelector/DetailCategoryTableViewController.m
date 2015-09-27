//
//  DetailCategoryTableViewController.m
//  OptionSelector
//
//  Created by Jason Wang on 8/15/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "DetailCategoryTableViewController.h"

@interface DetailCategoryTableViewController ()

@property (nonatomic) NSIndexPath *markedIndexPath;

@end

@implementation DetailCategoryTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    self.markedIndexPath = indexPath;
    self.category.categoryIndexPath = indexPath;
    self.category.selection = self.category.options[indexPath.row];
    [self.tableView reloadData];
}


#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.category.options.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"DetailCellIdentifier" forIndexPath:indexPath];
    
    cell.textLabel.text  = self.category.options[indexPath.row];
    
    if ([self.markedIndexPath isEqual:indexPath] || [self.category.categoryIndexPath isEqual:indexPath]) {
        cell.accessoryType = UITableViewCellAccessoryCheckmark;
    } else {
        cell.accessoryType = UITableViewCellAccessoryNone;
    }
    
    return cell;
}


@end
