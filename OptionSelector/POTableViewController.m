//
//  POTableViewController.m
//  OptionSelector
//
//  Created by Christella on 8/14/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "POTableViewController.h"
#import "PastryCategories.h"
#import "PastriesTableViewController.h"




@interface POTableViewController ()

@end

@implementation POTableViewController


//Figuring out the contents of this Table View


- (void)viewDidLoad {
    [super viewDidLoad];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return self.category.pastryOptions.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"OptionSelected" forIndexPath:indexPath];
    
    cell.textLabel.text = [self.category.pastryOptions objectAtIndex:indexPath.row];
    
    //checkmark methods
    cell.accessoryType = UITableViewCellAccessoryNone;
    if ([cell.textLabel.text isEqualToString:self.category.pastrySelection]) {
        cell.accessoryType = UITableViewCellAccessoryCheckmark;
    }
    
    return cell;
}


- (void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    self.category.pastrySelection = [self.category.pastryOptions objectAtIndex:indexPath.row];
    
    [self.delegate.tableView reloadData];
    
    [self.tableView reloadData];
    
    
}
 

@end
