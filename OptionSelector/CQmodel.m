//
//  CQmodel.m
//  OptionSelector
//
//  Created by Z on 8/14/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "CQmodel.h"

@implementation CQModel

-(void)setup{
    
    CQCategory *fish = [[CQCategory alloc] init];
    fish.name = @"Fish";
    fish.options = @[@"Shark",@"Stingray",@"Swordfish", @"Bass", @"Fluke", @"Tuna", @"Coelacanth"];
    
    CQCategory *trees = [[CQCategory alloc] init];
    trees.name = @"Trees";
    trees.options = @[@"Oak", @"Beech", @"Maple", @"Apple", @"Cedar", @"Pine"];
    
    CQCategory *squirrels  = [[CQCategory alloc] init];
    squirrels.name = @"Squirrels";
    squirrels.options = @[@"Grey", @"Fox", @"Red", @"Ground", @"Flying"];
    
    self.categories = [[NSArray alloc] initWithObjects:fish, trees, squirrels, nil];
}

@end
