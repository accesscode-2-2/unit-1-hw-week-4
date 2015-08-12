//
//  CategoryModel.m
//  OptionSelector
//
//  Created by Henna on 8/10/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "CategoryModel.h"
#import "CQCategory.h"

@implementation CategoryModel

+ (CategoryModel *)sharedInstance
{
    static dispatch_once_t once;
    static id sharedInstance;
    dispatch_once(&once, ^{
        sharedInstance = [[self alloc] init];
    });
    return sharedInstance;
}

-(void) initializeModel {
    
    self.allCategories = [[NSMutableArray alloc] init];
    
    CQCategory * pets = [[CQCategory alloc] init];
    pets.name = @"Pets";
    pets.selection = @"";
    pets.options = @[@"Dog", @"Cat", @"Bird", @"Iguana", @"Llama", @"Crocodile"];
    pets.index = 0;
    [self.allCategories addObject:pets];
    CQCategory * cars = [[CQCategory alloc] init];
    cars.name = @"Cars";
    cars.selection = @"";
    cars.options = @[@"Honda", @"Audi", @"BMW", @"Volvo", @"Mercedes"];
    cars.index = 1;
    [self.allCategories addObject:cars];
    
    CQCategory * food = [[CQCategory alloc] init];
    food.name = @"Food";
    food.selection = @"";
    food.options = @[@"Pizza", @"Salad", @"Cookies", @"Pasta", @"Rice"];
    food.index = 2;
    [self.allCategories addObject:food];



}

@end
