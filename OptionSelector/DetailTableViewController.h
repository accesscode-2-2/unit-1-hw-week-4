//
//  DetailTableViewController.h
//  OptionSelector
//
//  Created by Eric Sze on 8/11/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CQCategory.h"
#import "DelegateDetailTableVC.h"

@interface DetailTableViewController : UITableViewController

@property (nonatomic) CQCategory *category;

@property (nonatomic, weak)id <DelegateDetailTableVC> delegate;

@end
