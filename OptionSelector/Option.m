//
//  Option.m
//  OptionSelector
//
//  Created by Varindra Hart on 8/13/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "Option.h"

@implementation Option
-(instancetype)initWithName:(NSString *)name andArrayOfOptions:(NSArray *)array{
    
    if (self = [super init]) {
        self.name = name;
        self.arrayOfOptions = [NSArray arrayWithArray:array];
        
        return self;
    }
    
    return nil;
}
@end
