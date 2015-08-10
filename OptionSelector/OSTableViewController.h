//
//  OSTableViewController.h
//  OptionSelector
//
//  Created by Varindra Hart on 8/10/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "OSDetailTableViewControllerDelegate.h"
#import "OSDetailTableViewController.h"

@interface OSTableViewController : UITableViewController <OSDetailTableViewControllerDelegate>
-(void)reloadSelectedChoices:(NSString *)selection;
@end
