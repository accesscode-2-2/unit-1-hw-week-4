//
//  rootTableViewController.h
//  OptionSelector
//
//  Created by Jovanny Espinal on 8/13/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CQCategory.h"
#import "destinationTableViewController.h"
#import "CQCategoryModel.h"

@interface rootTableViewController : UITableViewController

@property (nonatomic) CQCategoryModel *categories;

@end
