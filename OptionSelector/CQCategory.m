//
//  CQCategory.m
//  OptionSelector
//
//  Created by Shena Yoshida on 8/11/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "CQCategory.h"

@implementation CQCategory

- (instancetype)initWithCategoryType:(NSString *)type {
    self = [super init];
    if (self) {
        if ([type isEqualToString:@"Dog"]) {
            self.name = @"Dog";
            self.options = @[
                                  @"Lassie",
                                  @"Beethoven",
                                  @"Toto",
                                  @"Porkchop",
                                  @"Scooby Doo",
                                  @"Wishbone",
                                  @"Air Bud",
                                  @"Santa's Little Helper",
                                  @"Odie"
                                  ];
            self.selection = @"";
        } else if ([type isEqualToString:@"Food"]) {
            self.name = @"Food"; // set properties
            self.options = @[
                                  @"Cheeseburger",
                                  @"Milk",
                                  @"Eggs",
                                  @"Pumpkin Pie",
                                  @"Pickles"
                                  ];
            self.selection = @"";

        } else if ([type isEqualToString:@"Planet"]) {
            self.name = @"Planet";
            self.options = @[
                                  @"Mercury",
                                  @"Venus",
                                  @"Earth",
                                  @"Mars",
                                  @"Jupiter",
                                  @"Saturn",
                                  @"Neptune",
                                  @"Uranus",
                                  @"Pluto"
                                  ];
            self.selection = @"";
        }
    }
    return self;
}


//- (void)initializeAllArrays {
//    
//    CQCategory *category1 = [[CQCategory alloc]init];  // created instance of CQCategory class
//    category1.name = @"Food"; // set properties
//    category1.options = @[
//                          @"Cheeseburger",
//                          @"Milk",
//                          @"Eggs",
//                          @"Pumpkin Pie",
//                          @"Pickles"
//                          ];
//    category1.selection = @"";
//    
//    
//    CQCategory *category2 = [[CQCategory alloc]init];
//    category2.name = @"Dog";
//    category2.options = @[
//                          @"Lassie",
//                          @"Beethoven",
//                          @"Toto",
//                          @"Porkchop",
//                          @"Scooby Doo",
//                          @"Wishbone",
//                          @"Air Bud",
//                          @"Santa's Little Helper",
//                          @"Odie"
//                          ];
//    category2.selection = @"";
//    
//    
//    CQCategory *category3 = [[CQCategory alloc]init];
//    category3.name = @"Planet";
//    category3.options = @[
//                          @"Mercury",
//                          @"Venus",
//                          @"Earth",
//                          @"Mars",
//                          @"Jupiter",
//                          @"Saturn",
//                          @"Neptune",
//                          @"Uranus",
//                          @"Pluto"
//                          ];
//    category3.selection = @"";

//    // Then, set the CQCategory instances into an array.
//    self.categories = @[
//                        category1,
//                        category2,
//                        category3
//                        ];

//}


@end
