//
//  ECBands.m
//  OptionSelector
//
//  Created by Elber Carneiro on 8/10/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "ECBands.h"

@implementation ECBands
- (instancetype)init {
    if (self = [super init]) {
        self.choices = @[@"Oingo Boingo", @"Thee Oh Sees", @"Pallbearer",
                         @"Devo", @"Ludicra", @"Blood Brothers"];
        self.name = @"Band";
    }
    return self;
}
@end
