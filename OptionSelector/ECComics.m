//
//  ECComics.m
//  OptionSelector
//
//  Created by Elber Carneiro on 8/10/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "ECComics.h"

@implementation ECComics
- (instancetype)init {
    if (self = [super init]) {
        self.choices = @[@"Madman Comics", @"Lumberjanes", @"Rat Queens",
                         @"Wolff & Byrd", @"Thomas Alsop", @"Bulletproof Coffin"];
        self.name = @"Comic Title";
    }
    return self;
}
@end
