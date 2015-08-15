//
//  CQCategoryTableViewController.m
//  OptionSelector
//
//  Created by Christian Maldonado on 8/11/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "CQCategoryTableViewController.h"
#import "DetailTableViewController.h"
#import "CQCategory.h"

@interface CQCategoryTableViewController ()

@property (nonatomic) CQCategory *guitar;
@property (nonatomic) NSArray *objects;


@end

@implementation CQCategoryTableViewController

#pragma mark - life cycle method


- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.guitar = [[CQCategory alloc]init];
    [self.guitar intializeData];
    
    self.navigationItem.title = @"Guitars";
    }


#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    
    return [self.guitar.options allKeys].count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    NSArray *keys = [self.guitar.options allKeys];
    NSString *key = [keys objectAtIndex:section];
    NSArray *values = [self.guitar.options objectForKey:key];
    
    return  values.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"selectorIdentifier" forIndexPath:indexPath];
   
    
    NSString *selection = [options objectForIndexPath:indexPath];
    

    
    return cell;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    DetailTableViewController *detailView = segue.destinationViewController;
    detailView.objects = self.objects;
}











@end
