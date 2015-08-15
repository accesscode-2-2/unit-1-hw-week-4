//
//  KPEditItemTableViewController.h
//  NavViewsAndOptionSelector
//
//  Created by MacMan on 8/14/15.
//  Copyright (c) 2015 MacManApp. All rights reserved.
//

#import <UIKit/UIKit.h>

@class KPIndex;

@interface KPEditItemTableViewController : UITableViewController


@property (nonatomic, strong) IBOutlet UITextField *nameField;
@property (nonatomic, strong) IBOutlet UISwitch *doneSwitch;

@property (nonatomic, strong)  KPIndex *item;



-(IBAction)itemDataChanged:(id)sender;

@end
