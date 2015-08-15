//
//  FirstTableViewController.m
//  OptionSelector
//
//  Created by Xiulan Shi on 8/11/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "FirstTableViewController.h"
#import "SecondTableViewController.h"

@interface FirstTableViewController ()

@end

@implementation FirstTableViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.model = [CategoryModel sharedInstance];
    [self.model initializeModel];
    
}

- (void)viewDidAppear:(BOOL)animated {
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
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ListPrototypeCell" forIndexPath:indexPath];
    
    CQCategory *category = [self.model.categories objectAtIndex:indexPath.row];
    
    cell.textLabel.text = category.name;
    cell.detailTextLabel.text = category.selection;
    
    return cell;
}



#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
   NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
    CQCategory *currentCategory = [self.model.categories objectAtIndex:indexPath.row];
    SecondTableViewController *detailVC = segue.destinationViewController;
    detailVC.category = currentCategory;
    
}

@end
