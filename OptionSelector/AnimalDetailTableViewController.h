//
//  AnimalDetailTableViewController.h
//  OptionSelector
//
//  Created by Lauren Caponong on 8/11/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CQCategory.h"

@class AnimalDetailTableViewController;

@protocol ViewControllerAnimalDetailTableViewDelegate <NSObject>
- (void)addItemViewController:(AnimalDetailTableViewController *)controller didFinishEnteringItem:(CQCategory *)item;
@end




@interface AnimalDetailTableViewController : UITableViewController

@property (nonatomic) CQCategory *thing;
@property (nonatomic, weak) id <ViewControllerAnimalDetailTableViewDelegate> delegate;

@property (nonatomic, retain) NSString *selectedThing;


@end
