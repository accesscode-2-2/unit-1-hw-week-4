//
//  ECPets.m
//  OptionSelector
//
//  Created by Elber Carneiro on 8/10/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "ECPets.h"

@implementation ECPets

- (instancetype)init {
    if (self = [super init]) {
        self.choices = @[@"Chihuahua", @"Turtle", @"Baby Chick",
                         @"Cockatiel", @"Miniature Pincher", @"Finch"];
        self.name = @"Pet Type";
    }
    return self;
}

@end
