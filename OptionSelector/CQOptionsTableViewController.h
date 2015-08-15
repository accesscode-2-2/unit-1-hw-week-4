//
//  CQOptionsTableViewController.h
//  OptionSelector
//
//  Created by Z on 8/14/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CQCategory.h"
#import "CQTableViewController.h"

@interface CQOptionsTableViewController : UITableViewController

@property (nonatomic) CQCategory *category;

@property (nonatomic,retain) NSIndexPath *checkedIndexPath;

@end
