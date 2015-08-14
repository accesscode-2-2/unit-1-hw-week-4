//
//  OptionsSelectTableViewController.m
//  OptionSelector
//
//  Created by Chris David on 8/11/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "OptionsSelectTableViewController.h"
#import "ListInstance.h"
#import "ListData.h"

@interface OptionsSelectTableViewController ()

@end

@implementation OptionsSelectTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.category.options count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"OptionsCellIdentifier" forIndexPath:indexPath];
    
    cell.textLabel.text = [self.category.options objectAtIndex:indexPath.row];
    
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath   *)indexPath
{
    [tableView cellForRowAtIndexPath:indexPath].accessoryType = UITableViewCellAccessoryCheckmark;
    ListInstance *shared = [ListInstance sharedInstance];
    NSString *picked = [self.category.options objectAtIndex: indexPath.row];
    
    self.category.selection = picked;
    
    [shared.allCategories replaceObjectAtIndex:self.category.index withObject:self.category];
}

-(void)tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView cellForRowAtIndexPath:indexPath].accessoryType = UITableViewCellAccessoryNone;
}

@end
