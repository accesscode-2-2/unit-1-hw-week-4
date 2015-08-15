//
//  KPAddItemTableViewController.h
//  NavViewsAndOptionSelector
//
//  Created by MacMan on 8/14/15.
//  Copyright (c) 2015 MacManApp. All rights reserved.
//

#import <UIKit/UIKit.h>

@class KPIndexListTableViewController;


@interface KPAddItemTableViewController : UITableViewController

-(IBAction)cancelButtonPressed:(id)sender;
-(IBAction)doneButtonPressed:(id)sender;

@property (nonatomic, strong)IBOutlet UITextField *nameField;

@property (nonatomic, strong)KPIndexListTableViewController *indexListTableViewController;



@end
