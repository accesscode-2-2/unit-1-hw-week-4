//
//  CQCategoryTableViewController.m
//  OptionSelector
//
//  Created by Christian Maldonado on 8/11/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "CQCategoryTableViewController.h"
#import "DetailTableViewController.h"


@interface CQCategoryTableViewController ()

@end

@implementation CQCategoryTableViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.model = [ModelCategory sharedInstance];
    [self.model initializeModel];
    
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    [self.tableView reloadData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.model.categories count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"iGotMyDoodlyCell" forIndexPath:indexPath];
    
    CQCategory *category = [self.model.categories objectAtIndex:indexPath.row];
    
    cell.textLabel.text = category.name;
    cell.detailTextLabel.text = category.selection;
    [cell layoutIfNeeded];
    return cell;
}



#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
    CQCategory *currentCategory = [self.model.categories objectAtIndex:indexPath.row];
    DetailTableViewController *detailVC = segue.destinationViewController;
    detailVC.category = currentCategory;
    
}


@end
