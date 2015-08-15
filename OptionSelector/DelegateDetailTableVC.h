//
//  DelegateDetailTableVC.h
//  OptionSelector
//
//  Created by Eric Sze on 8/14/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CQCategory.h"

@class DetailTableViewController;

@protocol DelegateDetailTableVC <NSObject>

-(void)DetailTableViewController:(DetailTableViewController *)viewController didSelectType:(CQCategory *)category;

@end
