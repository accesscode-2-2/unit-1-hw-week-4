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

+ (UIColor *)makeColorWithRed:(NSInteger)red
                        green:(NSInteger)green
                         blue:(NSInteger)blue {
    return [UIColor colorWithRed:red / 255.0
                           green:green / 255.0
                            blue:blue / 255.0
                           alpha:1.0];
}


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
   
    
    UIColor *cherry = [CQShadesData makeColorWithRed:164 green:0 blue:0];
    UIColor *rose = [CQShadesData makeColorWithRed:277 green:38 blue:54];
    UIColor *jam = [CQShadesData makeColorWithRed:195 green:33 blue:72];
    UIColor *merlot = [CQShadesData makeColorWithRed:112 green:28 blue:28];
    UIColor *garnet = [CQShadesData makeColorWithRed:128 green:0 blue:0];
    UIColor *crimson = [CQShadesData makeColorWithRed:178 green:34 blue:34];
    UIColor *ruby = [CQShadesData makeColorWithRed:206 green:32 blue:32];
    UIColor *scarlet = [CQShadesData makeColorWithRed:179 green:27 blue:27];
    UIColor *wine = [CQShadesData makeColorWithRed:86 green:3 blue:25];
    UIColor *brick = [CQShadesData makeColorWithRed:150 green:0 blue:24];
    UIColor *apple = [CQShadesData makeColorWithRed:227 green:0 blue:34];
    UIColor *mahogany = [CQShadesData makeColorWithRed:60 green:20 blue:20];
    UIColor *blood = [CQShadesData makeColorWithRed:128 green:0 blue:0];
    UIColor *sangria = [CQShadesData makeColorWithRed:128 green:0 blue:32];
    UIColor *berry = [CQShadesData makeColorWithRed:135 green:38 blue:87];
    UIColor *currant = [CQShadesData makeColorWithRed:101 green:0 blue:11];
    UIColor *blush = [CQShadesData makeColorWithRed:205 green:92 blue:92];
    UIColor *candy = [CQShadesData makeColorWithRed:255 green:8 blue:0];
    UIColor *lipstick = [CQShadesData makeColorWithRed:204 green:0 blue:0];
    
    
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
    
    UIColor *canary = [CQShadesData makeColorWithRed:255 green:191 blue:0];
    UIColor *gold = [CQShadesData makeColorWithRed:255 green:179 blue:71];
    UIColor *daffodil = [CQShadesData makeColorWithRed:247 green:233 blue:142];
    UIColor *flaxen = [CQShadesData makeColorWithRed:181 green:166 blue:66];
    UIColor *butter = [CQShadesData makeColorWithRed:255 green:248 blue:220];
    UIColor *lemon = [CQShadesData makeColorWithRed:255 green:247 blue:0];
    UIColor *mustard = [CQShadesData makeColorWithRed:255 green:219 blue:88];
    UIColor *corn = [CQShadesData makeColorWithRed:233 green:214 blue:107];
    UIColor *medallion = [CQShadesData makeColorWithRed:218 green:165 blue:32];
    UIColor *dandelion = [CQShadesData makeColorWithRed:255 green:209 blue:42];
    UIColor *fire = [CQShadesData makeColorWithRed:228 green:155 blue:15];
    UIColor *bumblebee = [CQShadesData makeColorWithRed:236 green:213 blue:64];
    UIColor *banana = [CQShadesData makeColorWithRed:255 green:225 blue:53];
    UIColor *butterscotch = [CQShadesData makeColorWithRed:244 green:196 blue:48];
    UIColor *dijon = [CQShadesData makeColorWithRed:184 green:134 blue:11];
    UIColor *honey = [CQShadesData makeColorWithRed:240 green:220 blue:130];
    UIColor *blonde = [CQShadesData makeColorWithRed:250 green:240 blue:190];
    UIColor *pineapple = [CQShadesData makeColorWithRed:251 green:236 blue:93];
    UIColor *tuscanSun = [CQShadesData makeColorWithRed:255 green:223 blue:0];

    
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
