//
//  OSDetailTableViewController.m
//  OptionSelector
//
//  Created by Varindra Hart on 8/10/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "OSDetailTableViewController.h"
#import "Option.h"

@interface OSDetailTableViewController ()

@property (nonatomic) NSDictionary *dictionaryOfOptionsForKey;

@end

@implementation OSDetailTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete method implementation.
    // Return the number of rows in the section.
    return [self.selectedCategory.arrayOfOptions count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"OptionsIdentifier" forIndexPath:indexPath];
    

    NSArray *optionsArray = self.selectedCategory.arrayOfOptions;
    cell.textLabel.text = optionsArray[indexPath.row];
    cell.accessoryType = UITableViewCellAccessoryNone;
    if([optionsArray[indexPath.row] isEqualToString:self.selectedCategory.selection]){
        cell.accessoryType = UITableViewCellAccessoryCheckmark;
    }
    
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    NSString *currentSelection = self.selectedCategory.arrayOfOptions [indexPath.row];
    self.selectedCategory.selection = currentSelection;
    [self.tableView reloadData];
    [self.delegate tableView:self updatedSelection:self.selectedCategory];
    
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
//- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
//    
//}


@end
