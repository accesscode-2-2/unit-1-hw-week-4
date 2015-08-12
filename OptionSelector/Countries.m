//
//  Countries.m
//  OptionSelector
//
//  Created by Charles Kang on 8/11/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "Countries.h"

@implementation Countries

- (instancetype)init {
    if (self = [super init]) {
        self.choice = @[@"South Korea", @"France", @"Japan", @"Spain", @"Maine", @"California"];
        self.name = @"Places";
    }
    return self;
}

@end
