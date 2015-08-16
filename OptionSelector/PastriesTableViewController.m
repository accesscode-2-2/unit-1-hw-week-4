//
//  PastriesTableViewController.m
//  OptionSelector
//
//  Created by Christella on 8/13/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "PastriesTableViewController.h"
#import "POTableViewController.h"
#import "PastryCategories.h"

@interface PastriesTableViewController ()

//Figuring out how to segue to other TVC.

@property NSArray *storePastryCategories;


-(void) setupPastryData;


@end

@implementation PastriesTableViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    
    [self setupPastryData];
    
    
    
    self.navigationItem.title = @"Pastries";
}

#pragma mark - The Data


-(void) setupPastryData {
    
    PastryCategories *donuts = [[PastryCategories alloc]init];
    PastryCategories *jellybeans = [[PastryCategories alloc]init];
    PastryCategories *cupcakes = [[PastryCategories alloc]init];
    PastryCategories *macaroons = [[PastryCategories alloc]init];

    donuts.pastryName = @"Doughnut";
    donuts.pastryOptions = @[@"Tres Leches Cake",@"Double Chocolate",@"Cream Brulee",@"Coconut Cream",@"Blueberry Cake",@"Strawberry Cake",@"Vanilla Bean",@"Rosemary Pineapple",@"Lavender Flowers",@"Coconut Lime"];
        
    
    jellybeans.pastryName = @"JellyBeans";
    jellybeans.pastryOptions = @[@"Coconut",@"Bubble Gum",@"Root Beer",@"Mango",@"Tutti-Frutti",@"Cotton Candy",@"Vanilla Bean",@"Strawberry Short Cake",@"Lime",@"Lemon"];
    
    cupcakes.pastryName = @"Cupcakes";
    cupcakes.pastryOptions = @[@"Boston Cream", @"Sugar Cookie", @"Tie Dye",@"Cookies & Cream",@"Cookie Dough", @"Red Velvet", @"Ice Cream Sundae", @"Root Beer", @"Chocolate Chip Pancake", @"Triple Chocolate Fudge"];
    
    
    macaroons.pastryName = @"Macaroons";
    macaroons.pastryOptions = @[@"Vanilla",@"Cherry", @"Peach", @"Rasberry", @"Rose", @"Banana", @"Kiwi", @"Strawberry", @"Green Tea",@"Caramel"];
        
    self.storePastryCategories = @[donuts, jellybeans, cupcakes, macaroons,];
}


#pragma mark - Table view data source


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return 1;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return self.storePastryCategories.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"PastryCategorySelected" forIndexPath:indexPath];

    PastryCategories *pastry = [self.storePastryCategories objectAtIndex:indexPath.row];
    cell.textLabel.text = pastry.pastryName;
    
    return cell;
}



#pragma Navigation


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    POTableViewController *vc = segue.destinationViewController;
    
    NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
    
    PastryCategories *newCategory = [self.storePastryCategories objectAtIndex:indexPath.row];
    vc.category = newCategory;
    
    vc.delegate = self;
    
}

    





@end
