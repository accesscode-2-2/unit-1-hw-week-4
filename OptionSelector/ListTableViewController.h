//
//  ListTableViewController.h
//  OptionSelector
//
//  Created by Justine Gartner on 8/11/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CQCategory2.h"

@interface ListTableViewController : UITableViewController <UITableViewDelegate>

//@property (nonatomic) NSString *shadeName;

@property (nonatomic) CQCategory2 *basic;

@end
