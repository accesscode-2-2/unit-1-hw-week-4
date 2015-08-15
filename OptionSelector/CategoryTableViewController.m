//
//  CategoryTableViewController.m
//  OptionSelector
//
//  Created by Charles Kang on 8/11/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "CategoryMain.h"
#import "CategoryTableViewController.h"
#import "OptionSelectionTableViewController.h"
#import "OptionSelectionTableViewControllerDelegate.h"

@interface CategoryTableViewController ()

@property (nonatomic) CategoryMain *manager;

@end

@implementation CategoryTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.navigationItem setTitle:@"Category Selection"];
    
    self.manager = [CategoryMain categoryManager];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self.tableView reloadData];
}

#pragma mark - Table view data source
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return [self.manager.categories count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CategoryCellIdentifier" forIndexPath:indexPath];
    
    cell.textLabel.text = [self.manager.categories[indexPath.row] name];
    cell.detailTextLabel.text = [self.manager.categories[indexPath.row] selection];
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
    return cell;
}

-(void)optionSelectionTableViewController:(OptionSelectionTableViewController *)tableViewController didSelectAnOption:(NSUInteger)cellIndex {
    
    NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
    Categories *category = self.manager.categories[indexPath.row];
    [category setSelection:category.choices[cellIndex]];
    NSLog(@"%@", category.choices[cellIndex]);
}

#pragma mark - Navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
    
    OptionSelectionTableViewController *optionSelectors = [segue destinationViewController];
    optionSelectors.categoryIndex = indexPath.row;
    optionSelectors.delegate = (id<OptionSelectionTableViewControllerDelegate>) self;
}

@end
