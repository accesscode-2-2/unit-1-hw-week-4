//
//  CQCategory.m
//  OptionSelector
//
//  Created by Justine Gartner on 8/11/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "CQCategory.h"

@implementation CQCategory

-(void)initializeData{
    
    self.redShades = @[
                       @"cherry",
                       @"rose",
                       @"jam",
                       @"merlot",
                       @"garnet",
                       @"crimson",
                       @"ruby",
                       @"scarlet",
                       @"wine",
                       @"brick",
                       @"apple",
                       @"mahogany",
                       @"blood",
                       @"sangria",
                       @"berry",
                       @"currant",
                       @"blush",
                       @"candy",
                       @"lipstick"
                         ];
    
    self.yellowShades = @[@"canary",
                          @"gold",
                          @"daffodil",
                          @"flaxen",
                          @"butter",
                          @"lemon",
                          @"mustard",
                          @"corn",
                          @"medallion",
                          @"dandelion",
                          @"fire",
                          @"bumblebee",
                          @"banana",
                          @"butterscotch",
                          @"dijon",
                          @"honey",
                          @"blonde",
                          @"pineapple",
                          @"tuscan sun"
                          ];
    
    self.blueShades = @[@"slate",
                        @"sky",
                        @"navy",
                        @"indigo",
                        @"cobalt",
                        @"teal",
                        @"ocean",
                        @"peacock",
                        @"azure",
                        @"cerulean",
                        @"lapis",
                        @"spruce",
                        @"stone",
                        @"aegean",
                        @"berry",
                        @"denim",
                        @"admiral",
                        @"sapphire"
                        ];
    
    self.colors = @{
                    @"Red" : self.redShades,
                    @"Yellow" : self.yellowShades,
                    @"Blue" : self.blueShades
                    };
    
}




@end
