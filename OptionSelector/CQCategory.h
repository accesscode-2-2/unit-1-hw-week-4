//
//  CQCategory.h
//  OptionSelector
//
//  Created by Jason Wang on 8/14/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CQCategory : NSObject

@property (nonatomic) NSString *name;
@property (nonatomic) NSArray *options;
@property (nonatomic) NSString *selected;

@end
