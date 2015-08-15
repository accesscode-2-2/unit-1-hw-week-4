//
//  Shoes.m
//  OptionSelector
//
//  Created by Charles Kang on 8/11/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "Shoes.h"

@implementation Shoes

- (instancetype)init {
    if (self = [super init]) {
        self.choices = @[@"Nike", @"Saucony", @"Adidas", @"Reebok", @"Timberland", @"Uggs"];
        self.name = @"Shoes";
    }
    return self;
}

@end
