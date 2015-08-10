//
//  OSDetailTableViewController.h
//  OptionSelector
//
//  Created by Varindra Hart on 8/10/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "OSDetailTableViewControllerDelegate.h"

@interface OSDetailTableViewController : UITableViewController

@property (nonatomic,weak) id<OSDetailTableViewControllerDelegate>delegate;
@property (nonatomic) NSString *keyForArrayToBeDisplayed;
@property (nonatomic) NSString *currentlySelectedOption;

@end
