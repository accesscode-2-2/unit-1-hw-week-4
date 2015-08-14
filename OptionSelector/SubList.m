//
//  SubList.m
//  OptionSelector
//
//  Created by Fatima Zenine Villanueva on 8/11/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "SubList.h"
#import "MainList.h"
#import "CQCategory.h"
#import "ObjectsInsideLists.h"

@interface SubList ()
@end

@implementation SubList

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // creates a BACK button
    UIBarButtonItem *buttonizeButton = [[UIBarButtonItem alloc] initWithTitle:@"Back"
                                                                        style:UIBarButtonItemStyleDone
                                                                       target:self
                                                                       action:@selector(buttonizeButtonTap:)];
    self.navigationItem.hidesBackButton = YES;
    self.navigationItem.leftBarButtonItem = buttonizeButton;
}

// method connected to the instatiated button
-(void)buttonizeButtonTap:(id)sender {
    // pushes to the root view controller
    [self.navigationController popToRootViewControllerAnimated:YES];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
    // returns only 1 section
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.sublistCQ.options.count;
    // returns the number of items inside the selected array
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"SubListID" forIndexPath:indexPath];
    cell.textLabel.text = self.sublistCQ.options[indexPath.row];
    return cell;
    // grabs the string of the selected object and returns the cell
}

// method tha creates a checkmark when selected
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView cellForRowAtIndexPath:indexPath].accessoryType = UITableViewCellAccessoryCheckmark;
    // on selected-- it sets the string 'selection' property of sublistCQ
    self.sublistCQ.selection = self.sublistCQ.options[indexPath.row];
}

// unchecks the non-selected row
-(void)tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView cellForRowAtIndexPath:indexPath].accessoryType = UITableViewCellAccessoryNone;
}

@end
