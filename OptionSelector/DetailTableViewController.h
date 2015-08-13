//
//  DetailTableViewController.h
//  OptionSelector
//
//  Created by Shena Yoshida on 8/10/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CQCategory.h"

@interface DetailTableViewController : UITableViewController {
    NSIndexPath *checkedIndexPath;
}

@property (nonatomic,retain) NSIndexPath *checkedIndexPath;
@property (nonatomic) CQCategory *category;

@end






