//
//  DetailTableViewController.m
//  OptionSelector
//
//  Created by Shena Yoshida on 8/10/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "DetailTableViewController.h"

@interface DetailTableViewController ()

@end

@implementation DetailTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // set checked index path to initial value (needs to reference the selected option)
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.category.options.count; // display each category's options "hot dog, etc"
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"DetailIdentifier" forIndexPath:indexPath];
    
    NSString *optionName = [self.category.options objectAtIndex:indexPath.row]; // configure string to show in view
    cell.textLabel.text = optionName;
    
    if([self.category.options[indexPath.row] isEqualToString:self.category.selection]){ // added to retain selection
        cell.accessoryType = UITableViewCellAccessoryCheckmark;
        self.checkedIndexPath = indexPath; // added: only one checkmark is allowed!
    }
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath   *)indexPath
{
    // add check marks
    [tableView cellForRowAtIndexPath:indexPath].accessoryType = UITableViewCellAccessoryCheckmark;
    
    // to only select one item in the array
    if(self.checkedIndexPath) {
        UITableViewCell* uncheckCell = [tableView cellForRowAtIndexPath:self.checkedIndexPath];
        uncheckCell.accessoryType = UITableViewCellAccessoryNone;
    }
    
    if([self.checkedIndexPath isEqual:indexPath]) {
        self.checkedIndexPath = nil;
   
    } else {
   
        UITableViewCell* cell = [tableView cellForRowAtIndexPath:indexPath];
        cell.accessoryType = UITableViewCellAccessoryCheckmark;
        self.checkedIndexPath = indexPath;
}
    // pass data back to first array
    self.category.selection = [self.category.options objectAtIndex:indexPath.row]; 
}

@end
