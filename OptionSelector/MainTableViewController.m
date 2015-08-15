//
//  MainTableViewController.m
//  OptionSelector
//
//  Created by Brian Blanco on 8/14/15.
//  Copyright © 2015 Mike Kavouras. All rights reserved.
//

#import "MainTableViewController.h"
#import "DetailTableViewController.h"
#import "CQCategory.h"

@interface MainTableViewController ()

@end

@implementation MainTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    CQCategory *invertebratesCategory = [[CQCategory alloc] init];
    
    invertebratesCategory.name = @"Invertebrates";
    invertebratesCategory.options = @[@"Butterfly",
                                      @"Amoeba",
                                      @"Fly",
                                      @"Jellyfish",
                                      @"Spider",
                                      @"Beetle"];
    
    
    CQCategory *amphibiansCategory = [[CQCategory alloc] init];
    
    amphibiansCategory.name = @"Amphibians";
    amphibiansCategory.options = @[@"Frog",
                                   @"Salamander",
                                   @"Toad",
                                   @"Mudpuppy",
                                   @"Eel",
                                   @"Caecilian"];
    
    
    
    CQCategory *fishCategory = [[CQCategory alloc] init];
    
    fishCategory.name = @"Fish";
    fishCategory.options = @[@"Catfish",
                             @"Sea Trout",
                             @"Sunfish",
                             @"Salmon",
                             @"Perch",
                             @"Halinbut"];
    
    
    CQCategory *reptilesCategory = [[CQCategory alloc] init];
    
    reptilesCategory.name = @"Reptiles";
    reptilesCategory.options = @[@"Snake",
                                   @"Iguana",
                                   @"Alligator",
                                   @"Bearded Dragon",
                                   @"Savannah Monitor",
                                   @"Tortoise"];
    
    
    
    CQCategory *mammalsCategory = [[CQCategory alloc] init];
    
    mammalsCategory.name = @"Mammals";
    mammalsCategory.options = @[@"Cat",
                                @"Dog",
                                @"Ferret",
                                @"Skunk",
                                @"Rat",
                                @"Sugar Glider"];
    
    
    
    
    CQCategory *birdsCategory = [[CQCategory alloc] init];
    
    birdsCategory.name = @"Birds";
    birdsCategory.options = @[@"African Grey",
                              @"Cockatiel",
                              @"Dove",
                              @"Falcon",
                              @"Eagle",
                              @"Sparrow"];
    
    self.animalCategories = @[invertebratesCategory, amphibiansCategory, fishCategory, reptilesCategory, mammalsCategory, birdsCategory];
    
}

- (void)viewDidAppear:(BOOL)animated {
    [self.tableView reloadData];
}


#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.animalCategories.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"reuseIdentifier" forIndexPath:indexPath];
    
    
    CQCategory *animalObject = self.animalCategories[indexPath.row];
    cell.textLabel.text = animalObject.name;
    
    cell.detailTextLabel.text = animalObject.selction;
    
    return cell;
}


#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    NSIndexPath *selectIndex = [self.tableView indexPathForSelectedRow];
    
    CQCategory *animalObject = self.animalCategories[selectIndex.row];
    
    DetailTableViewController *detailTable = segue.destinationViewController;
    
    detailTable.category = animalObject;
    
    
}


@end
