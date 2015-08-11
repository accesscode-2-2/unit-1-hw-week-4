//
//  ECJiuJitsuPeeps.m
//  OptionSelector
//
//  Created by Elber Carneiro on 8/10/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "ECJiuJitsuPeeps.h"

@implementation ECJiuJitsuPeeps
- (instancetype)init {
    if (self = [super init]) {
        self.choices = @[@"Fabio Clemente", @"Nic Gregoriades", @"Eddie Bravo",
                         @"Michelle Nicolini", @"Eddie Cummings", @"Kurt Osiander"];
        self.name = @"Jiu Jitsu Black Belt";
    }
    return self;
}
@end
