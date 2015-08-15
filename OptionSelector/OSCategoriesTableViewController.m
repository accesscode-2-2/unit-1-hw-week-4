//
//  OSCategoriesTableViewController.m
//  OptionSelector
//
//  Created by Daniel Distant on 8/11/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "OSCategoriesTableViewController.h"
#import "CQCategory.h"
#import "OSStuffTableViewController.h"

@interface OSCategoriesTableViewController () <UITableViewDelegate>

@property (nonatomic) NSArray *CQCategories;



@end

@implementation OSCategoriesTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    CQCategory *dogs = [[CQCategory alloc] init];
    CQCategory *cats = [[CQCategory alloc] init];
    CQCategory *birds = [[CQCategory alloc] init];
    CQCategory *mikes = [[CQCategory alloc] init];
    
    self.CQCategories = [[NSArray alloc] init];
    
    self.CQCategories = @[
                          dogs,
                          cats,
                          birds,
                          mikes
                          ];
    
    dogs.name = @"dogs";
    cats.name = @"cats";
    birds.name = @"birds";
    mikes.name = @"mikes";
    
    
    dogs.options = @[
                     @"siberian husky",
                     @"pit bull",
                     @"staffordshire terrier",
                     @"shiba inu"
                     ];
    
    //any dog under 15 lbs is a cat
    
    cats.options = @[
                     @"garfield",
                     @"chihuahua",
                     @"poodle",
                     @"the weird hairless kind"
                     ];
    
    birds.options = @[
                      @"peregrine falcon",
                      @"osprey",
                      @"golden eagle",
                      @"red-tailed hawk named Tobias"
                      ];
    
    mikes.options = @[
                      @"default Mike with sidekick Max",
                      @"evil French twin Mikael",
                      @"git legend Mike with dual-wield Macbooks",
                      @"Mike with weaponized flip-flops",
                      @"rare holographic non-mustache Mike"
                      ];

    
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    OSStuffTableViewController *stuffTableViewController = [[OSStuffTableViewController alloc]init];
    stuffTableViewController = segue.destinationViewController;
    NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
    stuffTableViewController.category = [self.CQCategories objectAtIndex:indexPath.row];
    
    if (([stuffTableViewController.tableView cellForRowAtIndexPath:indexPath].accessoryType = UITableViewCellAccessoryCheckmark)) {
        
        stuffTableViewController.category.selection = [stuffTableViewController.category.options objectAtIndex:indexPath.row];
        
        [self.tableView cellForRowAtIndexPath:indexPath].detailTextLabel.text = stuffTableViewController.category.selection;
    }
    
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return self.CQCategories.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"categoriesCell" forIndexPath:indexPath];
    
    CQCategory *cellCategory = [self.CQCategories objectAtIndex:indexPath.row];
    
    cell.textLabel.text = cellCategory.name;
    
    return cell;
}

-(void)viewDidAppear:(BOOL)animated {
    
    [self.tableView reloadData];
}

@end
