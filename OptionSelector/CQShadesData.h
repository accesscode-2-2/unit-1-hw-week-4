//
//  CQShadesData.h
//  OptionSelector
//
//  Created by Justine Gartner on 8/13/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CQCategory.h"

@interface CQShadesData : NSObject

@property (nonatomic) CQCategory *red;
@property (nonatomic) CQCategory *blue;
@property (nonatomic) CQCategory *yellow;

-(void)initializeData;

@end
