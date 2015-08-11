//
//  ECOptionPickerTableViewController.m
//  OptionSelector
//
//  Created by Elber Carneiro on 8/10/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "ECOptionPickerTableViewController.h"
#import "ECCategoryManager.h"

@interface ECOptionPickerTableViewController ()
@property (nonatomic) ECCategoryManager *manager;
@property (nonatomic) NSArray *choices;
@end

@implementation ECOptionPickerTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.manager = [ECCategoryManager sharedCategoryManager];
    self.choices = [self.manager.categories[self.categoryIndex] choices];
    [self.navigationItem setTitle:@"Choose One"];
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
    [self.delegate optionPickerTableViewController:self didSelectAnOption:indexPath.row];
    [tableView reloadData];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"choiceCellIdentifier"
                                                            forIndexPath:indexPath];
    
    // Configure the cell...
    NSString *choice = self.choices[indexPath.row];
    cell.textLabel.text = choice;
    
    ECCategory *category = self.manager.categories[self.categoryIndex];
    NSString *selectedChoice = [category selection];
    
    if ([selectedChoice isEqualToString:choice]) {
        [cell setAccessoryType:UITableViewCellAccessoryCheckmark];
    } else {
        [cell setAccessoryType:UITableViewCellAccessoryNone];
    }

    return cell;
}

@end