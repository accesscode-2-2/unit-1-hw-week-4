//
//  CategorySetup.m
//  OptionSelector
//
//  Created by Charles Kang on 8/11/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "CategorySetup.h"
#import "Countries.h"
#import "Food.h"
#import "Shoes.h"

@interface CategorySetup ()

@property (nonatomic) NSArray *categories;

@end

@implementation CategorySetup

- (instancetype)init {
    if (self = [super init]) {
        Countries *countries = [[Countries alloc] init];
        Food *food = [[Food alloc] init];
        Shoes *shoes = [[Shoes alloc] init];
        
        for (Categories *threeCategories in self.categories) {
            threeCategories.selection = @"";
        }
    }
    return self;
}

- (NSArray *)fetchCategories {
    return self.categories;
}

@end