//
//  OSDetailTableViewController.h
//  OptionSelector
//
//  Created by Varindra Hart on 8/10/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "OSDetailTableViewControllerDelegate.h"
#import "Option.h"

@interface OSDetailTableViewController : UITableViewController

@property (nonatomic,weak) id<OSDetailTableViewControllerDelegate>delegate;
@property (nonatomic) Option *selectedCategory;

@end
