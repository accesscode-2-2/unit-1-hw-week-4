//
//  ECMythologicalFigures.m
//  OptionSelector
//
//  Created by Elber Carneiro on 8/10/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "ECMythologicalFigures.h"

@implementation ECMythologicalFigures
- (instancetype)init {
    if (self = [super init]) {
        self.choices = @[@"Apep", @"Leviathan", @"Jörmungandr",
                         @"Tiamat", @"Quetzalcoatl", @"Loong"];
        self.name = @"Mythological Figure";
    }
    return self;
}
@end
