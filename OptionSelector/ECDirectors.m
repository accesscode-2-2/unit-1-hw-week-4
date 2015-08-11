//
//  ECDirectors.m
//  OptionSelector
//
//  Created by Elber Carneiro on 8/10/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "ECDirectors.h"

@implementation ECDirectors
- (instancetype)init {
    if (self = [super init]) {
        self.choices = @[@"Marin Scorcese", @"Spike Lee", @"Darren Aronofsky",
                         @"Takashi Miike", @"Quentin Tarantino", @"Christopher Nolan"];
        self.name = @"Film Director";
    }
    return self;
}
@end
