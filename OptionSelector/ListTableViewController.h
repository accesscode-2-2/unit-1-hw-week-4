//
//  ListTableViewController.h
//  OptionSelector
//
//  Created by Justine Gartner on 8/11/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CQCategory.h"

@protocol ListTableViewControllerDelegate <NSObject>

-(void) didSelectShade: (NSString *)shade withColor: (UIColor *)color atIndexPath: (NSIndexPath *) indexPath;

@end

@interface ListTableViewController : UITableViewController <UITableViewDelegate>

@property (nonatomic) CQCategory *basic;
@property (nonatomic, weak) id<ListTableViewControllerDelegate> delegate;

@property (nonatomic) NSIndexPath *selectedBasicIndexPath;

@end

