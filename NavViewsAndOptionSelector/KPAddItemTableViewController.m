//
//  KPAddItemTableViewController.m
//  NavViewsAndOptionSelector
//
//  Created by MacMan on 8/14/15.
//  Copyright (c) 2015 MacManApp. All rights reserved.
//

#import "KPAddItemTableViewController.h"
#import "KPIndexListTableViewController.h"
#import "KPIndex.h"


@interface KPAddItemTableViewController ()

@end

@implementation KPAddItemTableViewController

@synthesize nameField = _nameField;
@synthesize indexListTableViewController = _indexListTableViewController;


- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - IBActions

-(void)cancelButtonPressed:(id)sender{
    
    [self dismissViewControllerAnimated:YES completion:nil];
    
}

-(void) doneButtonPressed:(id)sender{
    KPIndex *newItem = [[KPIndex alloc] initWithName:self.nameField.text done:NO];
    
    
    [self.indexListTableViewController.indexArray addObject:newItem];
    
    
    
    [self dismissViewControllerAnimated:YES completion:nil];
    
}


@end
