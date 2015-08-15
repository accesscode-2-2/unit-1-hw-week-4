//
//  CQmodel.h
//  OptionSelector
//
//  Created by Z on 8/14/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CQCategory.h"

@interface CQModel : NSObject

@property (nonatomic) NSArray *categories;

-(void)setup;

@end
