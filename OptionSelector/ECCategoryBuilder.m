//
//  ECCategoryBuilder.m
//  OptionSelector
//
//  Created by Elber Carneiro on 8/10/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "ECCategoryBuilder.h"
#import "ECPets.h"
#import "ECComics.h"
#import "ECDirectors.h"
#import "ECBands.h"
#import "ECJiuJitsuPeeps.h"
#import "ECMythologicalFigures.h"

@interface ECCategoryBuilder()
@property (nonatomic) NSArray *categories;
@end

@implementation ECCategoryBuilder

- (instancetype)init {
    if (self = [super init]) {
        ECPets *pets = [[ECPets alloc] init];
        ECComics *comics = [[ECComics alloc] init];
        ECDirectors *directors = [[ECDirectors alloc] init];
        ECBands *bands = [[ECBands alloc] init];
        ECJiuJitsuPeeps *jiuJitsuPeeps = [[ECJiuJitsuPeeps alloc] init];
        ECMythologicalFigures *mythologicalFigures = [[ECMythologicalFigures alloc] init];
        self.categories = @[pets, comics, directors, bands, jiuJitsuPeeps, mythologicalFigures];
        for (ECCategory *cat in self.categories) {
            cat.selection = @"";
        }
    }
    return self;
}

- (NSArray *)fetchCategories {
    return self.categories;
}

@end
