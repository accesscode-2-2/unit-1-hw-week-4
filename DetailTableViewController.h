//
//  DetailTableViewController.h
//  OptionSelector
//
//  Created by Kaisha Jones on 9/12/15.
//  Copyright © 2015 Mike Kavouras. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CQCategory.h"


@interface DetailTableViewController : UITableViewController

@property (nonatomic,retain) NSIndexPath *checkedIndexPath;
@property (nonatomic) CQCategory *category;

@end
