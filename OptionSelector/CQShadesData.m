//
//  CQShadesData.m
//  OptionSelector
//
//  Created by Justine Gartner on 8/13/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "CQShadesData.h"
#import <UIKit/UIKit.h>

@implementation CQShadesData

-(void)initializeData{

    self.red = [[CQCategory alloc] init];
    self.yellow = [[CQCategory alloc] init];
    self.blue = [[CQCategory alloc] init];
    
    self.red.name = @"Red";
    self.yellow.name = @"Yellow";
    self.blue.name = @"Blue";
    
    self.red.detailTitle = @"Shades of Red";
    self.yellow.detailTitle = @"Shades of Yellow";
    self.blue.detailTitle = @"Shades of Blue";
    
    self.red.options = @[@"cherry",
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
    
    self.yellow.options = @[@"canary",
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
    
    self.blue.options = @[@"slate",
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
                          @"blueberry",
                          @"denim",
                          @"admiral",
                          @"sapphire",
                          @"arctic"
                          ];
   
    //Without (CGFLoat) OR the decimal (.0) after the number the UIColor will not show; one OR the other is sufficient.
    UIColor *cherry = [UIColor colorWithRed:(CGFloat)164.0/255.0 green:(CGFloat)0.0/255.0 blue:(CGFloat)0.0/255.0 alpha:(CGFloat)1.0];
    
    UIColor *rose = [UIColor colorWithRed:(CGFloat)227.0/255.0 green:(CGFloat)38.0/255.0 blue:(CGFloat)54.0/255.0 alpha:1.0];
    UIColor *jam = [UIColor colorWithRed:(CGFloat)195.0/255.0 green:(CGFloat)33.0/255.0 blue:(CGFloat)72.0/255.0 alpha:1.0];
    UIColor *merlot = [UIColor colorWithRed:(CGFloat)112.0/255.0 green:(CGFloat)28.0/255.0 blue:(CGFloat)28.0/255.0 alpha:1.0];
    UIColor *garnet = [UIColor colorWithRed:(CGFloat)128.0/255.0 green:(CGFloat)0.0/255.0 blue:(CGFloat)0.0/255.0 alpha:1.0];
    UIColor *crimson = [UIColor colorWithRed:(CGFloat)178.0/255.0 green:(CGFloat)34.0/255.0 blue:(CGFloat)34.0/255.0 alpha:1.0];
    UIColor *ruby = [UIColor colorWithRed:(CGFloat)206.0/255.0 green:(CGFloat)32.0/255.0 blue:(CGFloat)32.0/255.0 alpha:1.0];
    UIColor *scarlet = [UIColor colorWithRed:(CGFloat)179.0/255.0 green:(CGFloat)27.0/255.0 blue:(CGFloat)27.0/255.0 alpha:1.0];
    UIColor *wine = [UIColor colorWithRed:(CGFloat)86.0/255.0 green:(CGFloat)3.0/255.0 blue:(CGFloat)25.0/255.0 alpha:1.0];
    UIColor *brick = [UIColor colorWithRed:(CGFloat)150.0/255.0 green:(CGFloat)0.0/255.0 blue:(CGFloat)24.0/255.0 alpha:1.0];
    UIColor *apple = [UIColor colorWithRed:(CGFloat)227.0/255.0 green:(CGFloat)0.0/255.0 blue:(CGFloat)34.0/255.0 alpha:1.0];
    UIColor *mahogany = [UIColor colorWithRed:(CGFloat)60.0/255.0 green:(CGFloat)20.0/255.0 blue:(CGFloat)20.0/255.0 alpha:1.0];
    UIColor *blood = [UIColor colorWithRed:(CGFloat)128.0/255.0 green:(CGFloat)0.0/255.0 blue:(CGFloat)0.0/255.0 alpha:1.0];
    UIColor *sangria = [UIColor colorWithRed:(CGFloat)128.0/255.0 green:(CGFloat)0.0/255.0 blue:(CGFloat)32.0/255.0 alpha:1.0];
    UIColor *berry = [UIColor colorWithRed:(CGFloat)135.0/255.0 green:(CGFloat)38.0/255.0 blue:(CGFloat)87.0/255.0 alpha:1.0];
    UIColor *currant = [UIColor colorWithRed:(CGFloat)101.0/255.0 green:(CGFloat)0.0/255.0 blue:(CGFloat)11.0/255.0 alpha:1.0];
    UIColor *blush = [UIColor colorWithRed:(CGFloat)205.0/255.0 green:(CGFloat)92.0/255.0 blue:(CGFloat)92.0/255.0 alpha:1.0];
    UIColor *candy = [UIColor colorWithRed:(CGFloat)255.0/255.0 green:(CGFloat)8.0/255.0 blue:(CGFloat)0.0/255.0 alpha:1.0];
    UIColor *lipstick = [UIColor colorWithRed:(CGFloat)204.0/255.0 green:(CGFloat)0.0/255.0 blue:(CGFloat)0.0/255.0 alpha:1.0];
    
    
    self.red.shadeColors = @[cherry,
                             rose,
                             jam,
                             merlot,
                             garnet,
                             crimson,
                             ruby,
                             scarlet,
                             wine,
                             brick,
                             apple,
                             mahogany,
                             blood,
                             sangria,
                             berry,
                             currant,
                             blush,
                             candy,
                             lipstick
                            ];
    
    UIColor *canary = [UIColor colorWithRed:(CGFloat)255/255 green:(CGFloat)191/255 blue:(CGFloat)0/255 alpha:1];
    UIColor *gold = [UIColor colorWithRed:(CGFloat)255/255 green:(CGFloat)179/255 blue:(CGFloat)71/255 alpha:1];
    UIColor *daffodil = [UIColor colorWithRed:(CGFloat)247/255 green:(CGFloat)233/255 blue:(CGFloat)142/255 alpha:1];
    UIColor *flaxen = [UIColor colorWithRed:(CGFloat)181/255 green:(CGFloat)166/255 blue:(CGFloat)66/255 alpha:1];
    UIColor *butter = [UIColor colorWithRed:(CGFloat)255/255 green:(CGFloat)248/255 blue:(CGFloat)220/255 alpha:1];
    UIColor *lemon = [UIColor colorWithRed:(CGFloat)255/255 green:(CGFloat)247/255 blue:(CGFloat)0/255 alpha:1];
    UIColor *mustard = [UIColor colorWithRed:(CGFloat)255/255 green:(CGFloat)219/255 blue:(CGFloat)88/255 alpha:1];
    UIColor *corn = [UIColor colorWithRed:(CGFloat)233/255 green:(CGFloat)214/255 blue:(CGFloat)107/255 alpha:1];
    UIColor *medallion = [UIColor colorWithRed:(CGFloat)218/255 green:(CGFloat)165/255 blue:(CGFloat)32/255 alpha:1];
    UIColor *dandelion = [UIColor colorWithRed:(CGFloat)255/255 green:(CGFloat)209/255 blue:(CGFloat)42/255 alpha:1];
    UIColor *fire = [UIColor colorWithRed:(CGFloat)228/255 green:(CGFloat)155/255 blue:(CGFloat)15/255 alpha:1];
    UIColor *bumblebee = [UIColor colorWithRed:(CGFloat)236/255 green:(CGFloat)213/255 blue:(CGFloat)64/255 alpha:1];
    UIColor *banana = [UIColor colorWithRed:(CGFloat)255/255 green:(CGFloat)253/255 blue:(CGFloat)208/255 alpha:1];
    UIColor *butterscotch = [UIColor colorWithRed:(CGFloat)244/255 green:(CGFloat)196/255 blue:(CGFloat)48/255 alpha:1];
    UIColor *dijon = [UIColor colorWithRed:(CGFloat)184/255 green:(CGFloat)134/255 blue:(CGFloat)11/255 alpha:1];
    UIColor *honey = [UIColor colorWithRed:(CGFloat)240/255 green:(CGFloat)220/255 blue:(CGFloat)130/255 alpha:1];
    UIColor *blonde = [UIColor colorWithRed:(CGFloat)250/255 green:(CGFloat)240/255 blue:(CGFloat)190/255 alpha:1];
    UIColor *pineapple = [UIColor colorWithRed:(CGFloat)251/255 green:(CGFloat)236/255 blue:(CGFloat)93/255 alpha:1];
    UIColor *tuscanSun = [UIColor colorWithRed:(CGFloat)255/255 green:(CGFloat)223/255 blue:(CGFloat)0/255 alpha:1];

    
    self.yellow.shadeColors = @[canary,
                                gold,
                                daffodil,
                                flaxen,
                                butter,
                                lemon,
                                mustard,
                                corn,
                                medallion,
                                dandelion,
                                fire,
                                bumblebee,
                                banana,
                                butterscotch,
                                dijon,
                                honey,
                                blonde,
                                pineapple,
                                tuscanSun
                            ];
    
    UIColor *slate = [UIColor colorWithRed:112.0/255.0 green:128.0/255.0 blue:144.0/255.0 alpha:1.0];
    UIColor *sky = [UIColor colorWithRed:135.0/255.0 green:206.0/255.0 blue:235.0/255.0 alpha:1.0];
    UIColor *navy = [UIColor colorWithRed:0.0/255.0 green:0.0/255.0 blue:128.0/255.0 alpha:1.0];
    UIColor *indigo = [UIColor colorWithRed:75.0/255.0 green:0.0/255.0 blue:130.0/255.0 alpha:1.0];
    UIColor *cobalt = [UIColor colorWithRed:0.0/255.0 green:71.0/255.0 blue:171.0/255.0 alpha:1.0];
    UIColor *teal = [UIColor colorWithRed:0.0/255.0 green:128.0/255.0 blue:128.0/255.0 alpha:1.0];
    UIColor *ocean = [UIColor colorWithRed:47.0/255.0 green:79.0/255.0 blue:79.0/255.0 alpha:1.0];
    UIColor *peacock = [UIColor colorWithRed:47.0/255.0 green:47.0/255.0 blue:79.0/255.0 alpha:1.0];
    UIColor *azure = [UIColor colorWithRed:0.0/255.0 green:51.0/255.0 blue:153.0/255.0 alpha:1.0];
    UIColor *cerulean = [UIColor colorWithRed:0.0/255.0 green:123.0/255.0 blue:167.0/255.0 alpha:1.0];
    UIColor *lapis = [UIColor colorWithRed:21.0/255.0 green:96.0/255.0 blue:89.0/255.0 alpha:1.0];
    UIColor *spruce = [UIColor colorWithRed:117.0/255.0 green:133.0/255.0 blue:123.0/255.0 alpha:1.0];
    UIColor *stone = [UIColor colorWithRed:83.0/255.0 green:104.0/255.0 blue:120.0/255.0 alpha:1.0];
    UIColor *aegean = [UIColor colorWithRed:8.0/255.0 green:69.0/255.0 blue:126.0/255.0 alpha:1.0];
    UIColor *blueberry = [UIColor colorWithRed:25.0/255.0 green:25.0/255.0 blue:112.0/255.0 alpha:1.0];
    UIColor *denim = [UIColor colorWithRed:0.0/255.0 green:35.0/255.0 blue:102.0/255.0 alpha:1.0];
    UIColor *admiral = [UIColor colorWithRed:0.0/255.0 green:0.0/255.0 blue:156.0/255.0 alpha:1.0];
    UIColor *sapphire = [UIColor colorWithRed:18.0/255.0 green:97.0/255.0 blue:128.0/255.0 alpha:1.0];
    UIColor *arctic = [UIColor colorWithRed:231.0/255.0 green:254.0/255.0 blue:255.0/255.0 alpha:1.0];

    self.blue.shadeColors = @[slate,
                              sky,
                              navy,
                              indigo,
                              cobalt,
                              teal,
                              ocean,
                              peacock,
                              azure,
                              cerulean,
                              lapis,
                              spruce,
                              stone,
                              aegean,
                              blueberry,
                              denim,
                              admiral,
                              sapphire,
                              arctic
                            ];

}

@end
