//
//  ECCategoryTableViewController.m
//  OptionSelector
//
//  Created by Elber Carneiro on 8/10/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "ECCategoryTableViewController.h"
#import "ECOptionPickerTableViewController.h"
#import "ECOptionPickerTableViewControllerDelegate.h"
#import "ECCategoryManager.h"

@interface ECCategoryTableViewController ()
@property (nonatomic) ECCategoryManager *manager;
@end

@implementation ECCategoryTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.navigationItem setTitle:@"Categories"];
    self.manager = [ECCategoryManager sharedCategoryManager];
}

// this method ensures the data reloads every time you come back to this view
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
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"categoryCellIdentifier"
                                                            forIndexPath:indexPath];
    
    cell.textLabel.text = [self.manager.categories[indexPath.row] name];
    cell.detailTextLabel.text = [self.manager.categories[indexPath.row] selection];
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
    return cell;
}

#pragma mark - Delegate implementation
-(void)optionPickerTableViewController:(ECOptionPickerTableViewController *)tableViewController
                     didSelectAnOption:(NSUInteger)cellIndex {
    
    NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
    ECCategory *category = self.manager.categories[indexPath.row];
    [category setSelection:category.choices[cellIndex]];
    NSLog(@"%@", category.choices[cellIndex]);
}

#pragma mark - Navigation
// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
    
    ECOptionPickerTableViewController *optionTVC = [segue destinationViewController];
    optionTVC.categoryIndex = indexPath.row;
    optionTVC.delegate = (id<ECOptionPickerTableViewControllerDelegate>) self;
}


@end
