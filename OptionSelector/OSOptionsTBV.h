//
//  OSOptionsTBV.h
//  OptionSelector
//
//  Created by Jamaal Sedayao on 8/13/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CQCategory.h"
#import "OSOptionsTBV.h"

@interface OSOptionsTBV : UITableViewController

@property (nonatomic) CQCategory * optionsCategory;
@property (nonatomic,retain) NSIndexPath * checkedIndexPath;

@end
