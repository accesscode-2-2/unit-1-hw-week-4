//
//  SummaryTableViewController.m
//  OptionSelector
//
//  Created by Chris David on 8/11/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "SummaryTableViewController.h"
#import "ListInstance.h"
#import "ListData.h"
#import "OptionsSelectTableViewController.h"

@interface SummaryTableViewController ()

@property (nonatomic) ListInstance * data;

@end

@implementation SummaryTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"Favorite Sports Team";
    self.data = [ListInstance sharedInstance];
    [self.data initializeModel];
  
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
    return [self.data.allCategories count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CategoryCellIdentifier" forIndexPath:indexPath];
    
    ListData * category = [self.data.allCategories objectAtIndex:indexPath.row];
    
    NSString * title = category.name;
    NSString * selected = category.selection;
    cell.textLabel.text = title;
    
    cell.detailTextLabel.text = selected;
    
    
    return cell;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    NSIndexPath * indexPath = [self.tableView indexPathForSelectedRow];
    ListData * selected = [self.data.allCategories objectAtIndex:indexPath.row];
    OptionsSelectTableViewController * destination = segue.destinationViewController;
    destination.category = selected;
}


@end
