//
//  OptionsTableViewController.h
//  OptionSelector
//
//  Created by Kaisha Jones on 8/13/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CQCategory.h"
#import "CategoriesTableViewController.h"

@interface OptionsTableViewController : UITableViewController

@property (nonatomic) CQCategory *category;
@property (nonatomic, weak) CategoriesTableViewController *delegate;



@end
