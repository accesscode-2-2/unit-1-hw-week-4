//
//  ECOptionPickerTableViewControllerDelegate.h
//  OptionSelector
//
//  Created by Elber Carneiro on 8/10/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import <Foundation/Foundation.h>

@class ECOptionPickerTableViewController;

@protocol ECOptionPickerTableViewControllerDelegate <NSObject>
- (void)optionPickerTableViewController:(ECOptionPickerTableViewController *)tableViewController
                      didSelectAnOption:(NSUInteger)cellIndex;
@end
