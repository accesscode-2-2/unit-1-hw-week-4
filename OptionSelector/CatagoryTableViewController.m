//
//  CatagoryTableViewController.m
//  OptionSelector
//
//  Created by Jason Wang on 8/14/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "CatagoryTableViewController.h"
#import "CQCategory.h"
#import "DetailCategoryTableViewController.h"


@interface CatagoryTableViewController ()

@end

@implementation CatagoryTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    CQCategory *carSection = [[CQCategory alloc] init];
    
    carSection.name = @"Cars";
    carSection.options = @[@"Hyundai Santa Fe",
                           @"Jeep Cherokee",
                           @"Kia Sportage",
                           @"Mazda CX-5",
                           @"Honda CR-V"
                           ];
    
    CQCategory *computerSection = [[CQCategory alloc] init];
    
    computerSection.name = @"Computers";
    computerSection.options = @[@"MacBook Air",
                                @"MacBook Pro",
                                @"Dell",
                                @"HP",
                                @"Chrome"
                                ];
    
    CQCategory *phoneSection = [[CQCategory alloc] init];
    
    phoneSection.name = @"Phone";
    phoneSection.options = @[@"Iphone",
                             @"Blackberry",
                             @"Samsung",
                             @"Sony",
                             @"Nokia",
                             @"HTC",
                             ];

    self.categorySections = @[carSection, computerSection, phoneSection];
}

- (void)viewDidAppear:(BOOL)animated {
    [self.tableView reloadData];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.categorySections.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"categoryIdentifier" forIndexPath:indexPath];
    
    CQCategory *categorySections = self.categorySections[indexPath.row];
    cell.textLabel.text = categorySections.selected;

    return cell;
}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    NSIndexPath *selectedIndexPath = [self.tableView indexPathForSelectedRow];
    
    CQCategory *categorySections = self.categorySections[selectedIndexPath.row];
    
    DetailCategoryTableViewController *detailView = segue.destinationViewController;
    
    detailView.category = categorySections;
    
}


@end
