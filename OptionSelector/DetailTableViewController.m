//
//  DetailTableViewController.m
//  OptionSelector
//
//  Created by Umar on 8/14/15.
//  Copyright © 2015 Mike Kavouras. All rights reserved.
//

#import "OptionTableViewController.h"
#import "DetailTableViewController.h"
#import "Category.h"


@interface DetailTableViewController ()

//@property (nonatomic) NSMutableArray *categories;

@end

@implementation DetailTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.categories = [[NSMutableArray alloc]init];
    
    CQCategory *cars = [[CQCategory alloc] init];
    
    cars.name = @"Cars";
    cars.type = @[@"Nissan",
                               @"Toyota",
                               @"Honda",
                               @"Infiniti",
                               @"Lexus",
                               @"Acura",
                               @"Mercedes",
                               @"BMW",
                               @"Audi"];
    
    CQCategory *cities = [[CQCategory alloc] init];
    
    cities.name = @"Cities";
    cities.type = @[@"New York",
                              @"L.A.",
                              @"Chicago",
                              @"San Francisco",
                              @"Boston",
                              @"St. Louis",
                              @"Miami"];
    
    CQCategory *houses = [[CQCategory alloc] init];
    
    houses.name = @"Houses";
    houses.type = @[@"Colonial",
                             @"Ranch",
                             @"Tudor",
                             @"Georgian",
                             @"Farmhouse",
                             @"Bungalow",
                             @"Neomodern"];
    
    [self.categories addObject: cars];
    [self.categories addObject:cities];
    [self.categories addObject:houses];
}

- (void)viewDidAppear:(BOOL)animated {
    [self.tableView reloadData];
    
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.categories.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"reuseIdentifier" forIndexPath:indexPath];
    
    CQCategory *categories = self.categories[indexPath.row];
    cell.textLabel.text = categories.name;
    
    cell.detailTextLabel.text = categories.tile;
    
    return cell;
}

#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    NSIndexPath *selectedIndexPath = [self.tableView indexPathForSelectedRow];
    
    CQCategory *categories = self.categories[selectedIndexPath.row];
    
    OptionTableViewController *vc = segue.destinationViewController;
    
    vc.category = categories;
    
}


@end
