//
//  OptionSelectionTableViewController.m
//  OptionSelector
//
//  Created by Charles Kang on 8/11/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "OptionSelectionTableViewController.h"
#import "CategoryMain.h"

@interface OptionSelectionTableViewController ()

@property (nonatomic) CategoryMain *manager;
@property (nonatomic) NSArray *choices;

@end

@implementation OptionSelectionTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.manager = [CategoryMain categoryManager];
    self.choices = [self.manager.categories[self.categoryIndex] choices];
    [self.navigationItem setTitle:@"Chooserino"];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return [self.choices count];
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [self.delegate optionSelectionTableViewController:self didSelectAnOption:indexPath.row];
    [tableView reloadData];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cellChoiceIdentifier" forIndexPath:indexPath];
    
    // Configure the cell...
    NSString *choice = self.choices[indexPath.row];
    cell.textLabel.text = choice;
    
    Categories *category = self.manager.categories[self.categoryIndex];
    NSString *selectedChoice = [category selection];
    
    if ([selectedChoice isEqualToString:choice]) {
        [cell setAccessoryType:UITableViewCellAccessoryCheckmark];
    } else {
        [cell setAccessoryType:UITableViewCellAccessoryNone];
    }
    
    return cell;
}

@end