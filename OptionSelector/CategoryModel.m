//
//  CategoryModel.m
//  OptionSelector
//
//  Created by Xiulan Shi on 8/14/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "CategoryModel.h"
#import "CQCategory.h"

@implementation CategoryModel


+ (instancetype)sharedInstance
{
    static CategoryModel *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[CategoryModel alloc] init];
        // Do any other initialisation stuff here
    });
    return sharedInstance;
    
}

- (void)initializeModel {
    
    self.categories = [[NSMutableArray alloc] init];
    
    CQCategory *dogs = [[CQCategory alloc] init];
    dogs.name = @"Dogs";
    dogs.options = @[
                     @"Labrador Retriever",
                     @"German Shepherd",
                     @"Golden Retriever ",
                     @"Bulldog",
                     @"Yorksire Terrier",
                     @"Poodle",
                     @"Beagle",
                     @"Chihuahua",
                     @"Dachshund"
                     ];
    dogs.selection = @"";
    dogs.index = 0;
    [self.categories addObject:dogs];
    
    CQCategory *cars = [[CQCategory alloc] init];
    cars.name = @"Cars";
    cars.options = @[
                     @"Ford",
                     @"Honda",
                     @"Toyota",
                     @"Mazda",
                     @"BMW",
                     @"Audi",
                     @"Ferari",
                     @"Porsche",
                     @"Lamborghini"
                     ];
    cars.selection = @"";
    cars.index = 1;
    [self.categories addObject:cars];
    
    CQCategory *candies = [[CQCategory alloc] init];
    candies.name = @"Candies";
    candies.options = @[
                        @"chocolate bar",
                        @"chocolate chip",
                        @"chocolate",
                        @"lollipop",
                        @"candy cane",
                        @"jaw breaker",
                        @"caramel",
                        @"sour chew",
                        @"peanut butter cup",
                        @"gummi bear"
                        ];
    candies.selection = @"";
    candies.index = 2;
    [self.categories addObject:candies];
    
}


@end
