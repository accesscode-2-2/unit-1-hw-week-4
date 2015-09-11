//
//  DetailsTableViewController.h
//  OptionSelector
//
//  Created by Diana Elezaj on 8/13/15.
//  Copyright (c) 2015 Diana Elezaj. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CQCategory.h"
  
#import "AllCategoriesTableViewController.h"


@interface DetailsTableViewController : UITableViewController

@property (nonatomic) CQCategory *category;
@property (nonatomic,weak) AllCategoriesTableViewController *delegate;
 
@end
