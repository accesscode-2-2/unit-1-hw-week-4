//
//  ModelCategory.m
//  OptionSelector
//
//  Created by Christian Maldonado on 9/30/15.
//  Copyright © 2015 Mike Kavouras. All rights reserved.
//

#import "ModelCategory.h"
#import "CQCategory.h"

@implementation ModelCategory

+(instancetype)sharedInstance{
    

static ModelCategory *sharedInstance = nil;
static dispatch_once_t onceToken;
dispatch_once(&onceToken, ^{
    sharedInstance = [[ModelCategory alloc] init];
    // Do any other initialisation stuff here
});
return sharedInstance;

}

- (void)initializeModel {
    
    self.categories = [[NSMutableArray alloc] init];
    
    CQCategory *guitars = [[CQCategory alloc] init];
    guitars.name = @"Guitars";
    guitars.options = @[
                     @"Fender Stratocaster",
                     @"Steven Connor",
                     @"Fender Mustang ",
                     @"Gibson Explorer",
                     @"Gibson Les Paul",
                     @"Paul Languadoc",
                     @"Turner Model 1",
                     @"Turner Renaissance RN-6h",
                     @"Robert Ruck Classical"
                     ];
    guitars.selection = @"";
    guitars.index = 0;
    [self.categories addObject:guitars];
    
    CQCategory *bass = [[CQCategory alloc] init];
    bass.name = @"Basses";
    bass.options = @[
                     @"Fender Jazz ",
                     @"Fender Percision",
                     @"Gibson Thunderbird",
                     @"Rickenbacker 4001",
                     @"Fodera Monarch",
                     @"Hofner 5001 ",
                     @"Ernie Ball Stingray",
                     @"Carl Thopson Rainbow",
                     @"Modulus Aboriginal"
                     ];
    bass.selection = @"";
    bass.index = 1;
    [self.categories addObject:bass];
    
    CQCategory *drums = [[CQCategory alloc] init];
    drums.name = @"Drums";
    drums.options = @[
                        @"DW",
                        @"Tama",
                        @"Pearl",
                        @"Premier",
                        @"Ludwig",
                        @"Gretsch",
                        @"Yamaha",
                        @"Slingerland",
                        @"LP",
                        @"Remo"
                        ];
    drums.selection = @"";
    drums.index = 2;
    [self.categories addObject:drums];
    
}


@end
