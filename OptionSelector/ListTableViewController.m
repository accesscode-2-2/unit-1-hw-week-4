//
//  ListTableViewController.m
//  OptionSelector
//
//  Created by Justine Gartner on 8/11/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "ListTableViewController.h"

@interface ListTableViewController ()

@end

@implementation ListTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.title = self.basic.detailTitle;
}


#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return self.basic.options.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ListOfShadesCellIdentifier" forIndexPath:indexPath];
    
    NSArray *listOfShades = self.basic.options;
    NSString *shadeName = listOfShades [indexPath.row];
    
    cell.textLabel.text = shadeName;
    
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    
    cell.accessoryType = UITableViewCellAccessoryCheckmark;
    
    [cell setSelected:TRUE animated:TRUE];
    
    NSString *selectedShade = cell.textLabel.text;
    
    self.basic.selected = selectedShade;
    
    NSLog(@"Selected: %@", selectedShade);
    
    
    
}

-(void)tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    
    cell.accessoryType = UITableViewCellAccessoryNone;
    
    [cell setSelected:FALSE animated:FALSE];
    
    self.basic.selected = cell.textLabel.text;
    
    NSLog(@"DEselected: %@", self.basic.selected);

}

@end
