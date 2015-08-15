//
//  KPEditItemTableViewController.m
//  NavViewsAndOptionSelector
//
//  Created by MacMan on 8/14/15.
//  Copyright (c) 2015 MacManApp. All rights reserved.
//

#import "KPEditItemTableViewController.h"
#import "KPIndex.h"

@interface KPEditItemTableViewController ()

@end

@implementation KPEditItemTableViewController

@synthesize nameField = _nameField;
@synthesize doneSwitch = _doneSwitch;
@synthesize item = _item;





- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    
    self.nameField.text = self.item.name;
    [self.doneSwitch setOn: self.item.done];
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark -IBActions

-(void)itemDataChanged:(id)sender {
    
    self.item.name = self.nameField.text;
    self.item.done = self.doneSwitch.isOn;
    
    
}


@end
