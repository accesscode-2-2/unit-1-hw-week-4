//
//  POTableViewController.m
//  OptionSelector
//
//  Created by Christella on 8/14/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "POTableViewController.h"
#import "PastryCategories.h"




@interface POTableViewController ()

@end

@implementation POTableViewController

@synthesize pastryInt;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    donutsArray =[[NSArray alloc]initWithObjects: @"Tres Leches Cake",@"Double Chocolate",@"Cream Brulee",@"Coconut Cream",@"Blueberry Cake",@"Strawberry Cake",@"Vanilla Bean",@"Rosemary Pineapple",@"Lavender Flowers",@"Coconut Lime", nil];
    
    jellybeansArray = [[NSArray alloc]initWithObjects: @"Coconut",@"Bubble Gum",@"Root Beer",@"Mango",@"Tutti-Frutti",@"Cotton Candy",@"Vanilla Bean",@"Strawberry Short Cake",@"Lime",@"Lemon", nil];
    
    cupcakesArray = [[NSArray alloc]initWithObjects: @"Boston Cream", @"Sugar Cookie", @"Tie Dye",@"Cookies & Cream",@"Cookie Dough", @"Red Velvet", @"Ice Cream Sundae", @"Root Beer", @"Chocolate Chip Pancake", @"Triple Chocolate Fudge", nil];
    
    macaroonsArray = [[NSArray alloc]initWithObjects: @"Vanilla",@"Cherry", @"Peach", @"Rasberry", @"Rose", @"Banana", @"Kiwi", @"Strawberry", @"Green Tea",@"Caramel", nil];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    if (pastryInt == 0)
        return [donutsArray count];
    if (pastryInt == 1)
        return [jellybeansArray count];
    if (pastryInt == 2)
        return [cupcakesArray count];
    if (pastryInt == 3)
        return [macaroonsArray count];
    
    [self.tableView reloadData];
    return 0;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"PastryListIdentifier" forIndexPath:indexPath];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"PastryListIdentifier"];
        
        //configure cell
        if (pastryInt == 0)
            cell.textLabel.text = [donutsArray objectAtIndex:indexPath.row];
        if (pastryInt == 1)
            cell.textLabel.text = [jellybeansArray objectAtIndex:indexPath.row];
        if (pastryInt == 2)
            cell.textLabel.text = [cupcakesArray objectAtIndex:indexPath.row];
        if (pastryInt == 3)
            cell.textLabel.text = [macaroonsArray objectAtIndex:indexPath.row];
        
    }
   
    
    return cell;
}
 

@end
