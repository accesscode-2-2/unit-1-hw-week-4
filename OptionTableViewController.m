//
//  OptionTableViewController.m
//  OptionSelector
//
//  Created by Umar on 8/13/15.
//  Copyright © 2015 Mike Kavouras. All rights reserved.
//

#import "OptionTableViewController.h"


@interface OptionTableViewController ()

@end

@implementation OptionTableViewController

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
    return  self.category.type.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CellIdentifier" forIndexPath:indexPath];
    
    NSString *categoryOption = self.category.type[indexPath.row];
    cell.textLabel.text = categoryOption;
    
    if (self.category.type[indexPath.row] == self.category.tile) {
        
        cell.accessoryType = UITableViewCellAccessoryCheckmark;
        
    } else {
        cell.accessoryType = UITableViewCellAccessoryNone;
    }
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    self.category.tile = self.category.type[indexPath.row];
    
    [self.tableView reloadData];
    
}

@end
