//
//  POTableViewController.h
//  OptionSelector
//
//  Created by Christella on 8/14/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PastryCategories.h"
#import "PastriesTableViewController.h"


@interface POTableViewController : UITableViewController 

@property (nonatomic) PastryCategories *category;
@property (nonatomic,weak) PastriesTableViewController *delegate;


@end
