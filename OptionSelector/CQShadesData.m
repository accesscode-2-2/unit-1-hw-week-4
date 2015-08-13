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
   
    //Must change all of the colors to the following format for the color to work
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
    
    UIColor *canary = [UIColor colorWithRed:255/255 green:191/255 blue:0/255 alpha:1];
    UIColor *gold = [UIColor colorWithRed:255/255 green:179/255 blue:71/255 alpha:1];
    UIColor *daffodil = [UIColor colorWithRed:247/255 green:233/255 blue:142/255 alpha:1];
    UIColor *flaxen = [UIColor colorWithRed:181/255 green:166/255 blue:66/255 alpha:1];
    UIColor *butter = [UIColor colorWithRed:255/255 green:248/255 blue:220/255 alpha:1];
    UIColor *lemon = [UIColor colorWithRed:255/255 green:247/255 blue:0/255 alpha:1];
    UIColor *mustard = [UIColor colorWithRed:255/255 green:219/255 blue:88/255 alpha:1];
    UIColor *corn = [UIColor colorWithRed:233/255 green:214/255 blue:107/255 alpha:1];
    UIColor *medallion = [UIColor colorWithRed:218/255 green:165/255 blue:32/255 alpha:1];
    UIColor *dandelion = [UIColor colorWithRed:255/255 green:209/255 blue:42/255 alpha:1];
    UIColor *fire = [UIColor colorWithRed:228/255 green:155/255 blue:15/255 alpha:1];
    UIColor *bumblebee = [UIColor colorWithRed:236/255 green:213/255 blue:64/255 alpha:1];
    UIColor *banana = [UIColor colorWithRed:255/255 green:253/255 blue:208/255 alpha:1];
    UIColor *butterscotch = [UIColor colorWithRed:244/255 green:196/255 blue:48/255 alpha:1];
    UIColor *dijon = [UIColor colorWithRed:184/255 green:134/255 blue:11/255 alpha:1];
    UIColor *honey = [UIColor colorWithRed:240/255 green:220/255 blue:130/255 alpha:1];
    UIColor *blonde = [UIColor colorWithRed:250/255 green:240/255 blue:190/255 alpha:1];
    UIColor *pineapple = [UIColor colorWithRed:251/255 green:236/255 blue:93/255 alpha:1];
    UIColor *tuscanSun = [UIColor colorWithRed:255/255 green:223/255 blue:0/255 alpha:1];

    
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
    
    UIColor *slate = [UIColor colorWithRed:112/255 green:128/255 blue:144/255 alpha:1];
    UIColor *sky = [UIColor colorWithRed:135/255 green:206/255 blue:235/255 alpha:1];
    UIColor *navy = [UIColor colorWithRed:0/255 green:0/255 blue:128/255 alpha:1];
    UIColor *indigo = [UIColor colorWithRed:75/255 green:0/255 blue:130/255 alpha:1];
    UIColor *cobalt = [UIColor colorWithRed:0/255 green:71/255 blue:171/255 alpha:1];
    UIColor *teal = [UIColor colorWithRed:0/255 green:128/255 blue:128/255 alpha:1];
    UIColor *ocean = [UIColor colorWithRed:47/255 green:79/255 blue:79/255 alpha:1];
    UIColor *peacock = [UIColor colorWithRed:47/255 green:47/255 blue:79/255 alpha:1];
    UIColor *azure = [UIColor colorWithRed:0/255 green:51/255 blue:153/255 alpha:1];
    UIColor *cerulean = [UIColor colorWithRed:0/255 green:123/255 blue:167/255 alpha:1];
    UIColor *lapis = [UIColor colorWithRed:21/255 green:96/255 blue:89/255 alpha:1];
    UIColor *spruce = [UIColor colorWithRed:117/255 green:133/255 blue:123/255 alpha:1];
    UIColor *stone = [UIColor colorWithRed:83/255 green:104/255 blue:120/255 alpha:1];
    UIColor *aegean = [UIColor colorWithRed:8/255 green:69/255 blue:126/255 alpha:1];
    UIColor *blueberry = [UIColor colorWithRed:25/255 green:25/255 blue:112/255 alpha:1];
    UIColor *denim = [UIColor colorWithRed:0/255 green:35/255 blue:102/255 alpha:1];
    UIColor *admiral = [UIColor colorWithRed:0/255 green:0/255 blue:156/255 alpha:1];
    UIColor *sapphire = [UIColor colorWithRed:18/255 green:97/255 blue:128/255 alpha:1];
    UIColor *arctic = [UIColor colorWithRed:231/255 green:254/255 blue:255/255 alpha:1];

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
