//
//  OptionSelectionTableViewController.h
//  OptionSelector
//
//  Created by Charles Kang on 8/11/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "OptionSelectionTableViewControllerDelegate.h"

@interface OptionSelectionTableViewController : UITableViewController

@property (nonatomic, weak) id<OptionSelectionTableViewControllerDelegate> delegate;
@property (nonatomic) NSUInteger categoryIndex;

@end
