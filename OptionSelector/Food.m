//
//  Food.m
//  OptionSelector
//
//  Created by Charles Kang on 8/11/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "Food.h"

@implementation Food

- (instancetype)init {
    if (self = [super init]) {
        self.choice = @[@"Pizza", @"Pasta", @"Linguine", @"Ravioli", @"Krabby Patty", @"Rainbow Patty"];
        self.name = @"Food";
    }
    return self;
}

@end