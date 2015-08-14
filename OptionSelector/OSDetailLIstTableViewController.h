//
//  OSDetailLIstTableViewController.h
//  OptionSelector
//
//  Created by Natalia Estrella on 8/9/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CQCategory.h"

@interface OSDetailLIstTableViewController : UITableViewController

@property (nonatomic) CQCategory *category; 

//i think the property that should go here is valuelist so we can print out the whole array when the key is selected in the first view. 
//@property (nonatomic) NSString *valueForKeySelected;
//@property (nonatomic) NSArray *valueList;


@end
