//
//  CategoryTableViewController.h
//  OptionSelector
//
//  Created by Artur Lan on 8/13/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CategoryTableViewController : UITableViewController <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, strong) NSArray *category;

@end
