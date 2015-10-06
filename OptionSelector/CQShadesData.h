//
//  CQShadesData.h
//  OptionSelector
//
//  Created by Justine Gartner on 8/13/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CQCategory.h"


//Initializes data for categories of shades from CQCategory class
@interface CQShadesData : NSObject

@property (nonatomic) CQCategory *red;
@property (nonatomic) CQCategory *blue;
@property (nonatomic) CQCategory *yellow;

-(void)initializeData;

@end
