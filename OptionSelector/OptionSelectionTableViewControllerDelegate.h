//
//  OptionSelectionTableViewControllerDelegate.h
//  OptionSelector
//
//  Created by Charles Kang on 8/12/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import <Foundation/Foundation.h>

@class OptionSelectionTableViewController;

@protocol OptionSelectionTableViewControllerDelegate <NSObject>
- (void)optionSelectionTableViewController:(OptionSelectionTableViewController *)tableViewController
                      didSelectAnOption:(NSUInteger)cellIndex;
@end
