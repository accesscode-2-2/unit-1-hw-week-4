//
//  OSDetailTableViewControllerDelegate.h
//  OptionSelector
//
//  Created by Varindra Hart on 8/10/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import <Foundation/Foundation.h>

@class OSDetailTableViewController;

@protocol OSDetailTableViewControllerDelegate <NSObject>

-(void) tableView:(OSDetailTableViewController *)sender updatedSelection:(NSString *)selection;

@end
