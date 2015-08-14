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


@end

@implementation PastriesTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    PastryCategories *donuts = [[PastryCategories alloc]init];
    [donuts setPastryName: @"Doughnut"];
    
    PastryCategories *jellybeans = [[PastryCategories alloc]init];
    [jellybeans setPastryName: @"Doughnut"];
    
    PastryCategories *cupcakes = [[PastryCategories alloc]init];
    [cupcakes setPastryName: @"Doughnut"];

    PastryCategories *macaroons = [[PastryCategories alloc]init];
    [macaroons setPastryName: @"Doughnut"];
    
    self.storePastryCategories = [[NSArray alloc]initWithObjects: donuts,jellybeans, cupcakes, macaroons, nil];

    
    NSLog(@"%@", cupcakes);
    NSLog(@"%@", donuts);

    

  
    
    
    
    
    
   self.navigationItem.title = @"Pastries";
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

    
    
    
    
    return cell;
}





@end
