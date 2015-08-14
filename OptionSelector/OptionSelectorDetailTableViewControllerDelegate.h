//
//  OptionSelectorDetailTableViewControllerDelegate.h
//  OptionSelector
//
//  Created by Mesfin Bekele Mekonnen on 8/10/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Type.h"
@class OptionSelectorDetailTableViewController;

@protocol OptionSelectorDetailTableViewControllerDelegate <NSObject>

-(void)optionSelectorDetailTableViewController:(OptionSelectorDetailTableViewController *)        viewController didSelectType:(Type *)type;

@end
