//
//  PastriesTableViewController.m
//  OptionSelector
//
//  Created by Christella on 8/13/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "PastriesTableViewController.h"
#import "PastryCategories.h"

@interface PastriesTableViewController ()

@property NSArray *storePastryCategories;

-(void) setupPastryData;


@end

@implementation PastriesTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    [self setupPastryData];
    
    
   

    

    
    
    
    
    
   self.navigationItem.title = @"Pastries";
}


-(void) setupPastryData {
    PastryCategories *donuts = [[PastryCategories alloc]init];
    [donuts setPastryName: @"Doughnut"];
    [donuts setPastryOptions:@[@"Tres Leches Cake",@"Double Chocolate",@"Cream Brulee",@"Coconut Cream",@"Blueberry Cake",@"Strawberry Cake",@"Vanilla Bean",@"Rosemary Pineapple",@"Lavender Flowers",@"Coconut Lime",]];
    
    PastryCategories *jellybeans = [[PastryCategories alloc]init];
    [jellybeans setPastryName: @"JellyBeans"];
    [jellybeans setPastryOptions:@[@"Tres Leches Cake",@"Double Chocolate",@"Cream Brulee",@"Coconut Cream",@"Blueberry Cake",@"Strawberry Cake",@"Vanilla Bean",@"Rosemary Pineapple",@"Lavender Flowers",@"Coconut Lime",]];
    
    PastryCategories *cupcakes = [[PastryCategories alloc]init];
    [cupcakes setPastryName: @"Cupcakes"];
    [cupcakes setPastryOptions:@[@"Tie-Dye",@"Red",@"Cream Brulee",@"Coconut Cream",@"Blueberry Cake",@"Strawberry Cake",@"Vanilla Bean",@"Rosemary Pineapple",@"Lavender Flowers",@"Coconut Lime",]];
    
    PastryCategories *macaroons = [[PastryCategories alloc]init];
    [macaroons setPastryName: @"Macaroons"];
    [macaroons setPastryOptions:@[@"Tres Leches Cake",@"Double Chocolate",@"Cream Brulee",@"Coconut Cream",@"Blueberry Cake",@"Strawberry Cake",@"Vanilla Bean",@"Rosemary Pineapple",@"Lavender Flowers",@"Coconut Lime",]];

    
    self.storePastryCategories = [[NSArray alloc]initWithObjects: donuts.pastryName,jellybeans.pastryName, cupcakes.pastryName, macaroons.pastryName, nil];
    
 
    
}






#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return self.storePastryCategories.count;

  
    
}






- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"PastriesIdentifier" forIndexPath:indexPath];

    cell.textLabel.text=[self.storePastryCategories objectAtIndex:indexPath.row];
    
    
    
    
    return cell;
}

#pragma Navigation

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [self performSegueWithIdentifier:@"yourSegue" sender:self];

    
    NSLog(@"preparing");
}







@end
