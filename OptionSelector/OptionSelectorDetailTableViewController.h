//
//  OptionSelectorDetailTableViewController.h
//  OptionSelector
//
//  Created by Mesfin Bekele Mekonnen on 8/10/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "OptionSelectorDetailTableViewControllerDelegate.h"
#import "Type.h"

@interface OptionSelectorDetailTableViewController : UITableViewController

@property (nonatomic) Type *type;

@property(nonatomic,weak)id <OptionSelectorDetailTableViewControllerDelegate> delegate;

@end
