//
//  ECCategoryManager.m
//  OptionSelector
//
//  Created by Elber Carneiro on 8/10/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "ECCategoryManager.h"
#import "ECCategoryBuilder.h"

@interface ECCategoryManager()
@property (nonatomic) ECCategoryBuilder *categoryBuilder;
@end

@implementation ECCategoryManager

+ (instancetype)sharedCategoryManager {
    static ECCategoryManager *sharedCategoryManager = nil;
    
    // this token and the dispatch_once method make sure that the singleton is
    // created only ONCE, so we can use it throughout the app.
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedCategoryManager = [[self alloc] init];
    });
    
    return sharedCategoryManager;
}

- (instancetype)init {
    if (self = [super init]) {
        self.categoryBuilder = [[ECCategoryBuilder alloc] init];
        self.categories = [self.categoryBuilder fetchCategories];
    }
    return self;
}

@end
