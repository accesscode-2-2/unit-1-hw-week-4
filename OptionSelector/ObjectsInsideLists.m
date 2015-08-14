//
//  ObjectsInsideLists.m
//  OptionSelector
//
//  Created by Fatima Zenine Villanueva on 8/11/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "ObjectsInsideLists.h"
#import "CQCategory.h"

@implementation ObjectsInsideLists

-(instancetype)init {
    if (self = [super init]) {
        self.videoGames = [self arrayOfGames];
        return self;
    }
    return nil;
}

-(NSArray *)arrayOfGames {
    NSArray *horror = @[
      @"Alan Wake",
      @"Alien",
      @"Condemned",
      @"Dead Rising",
      @"Dead Space",
      @"Dino Crisis",
      @"Five Night At Freddy's",
      @"Obscure",
      @"Resident Evil",
      @"Silent Hill",
    ];
    
    NSArray *shooter = @[
      @"Battlefield",
      @"Call of Duty",
      @"Counter-Strike",
      @"Half-Life",
      @"Wolfenstein",
    ];
    
    NSArray *adventure = @[
      @"Final Fantasy",
      @"Grim Fandango",
      @"King's Quest",
      @"Legend of Zelda",
      @"Pokemon",
      @"Shadow of the Colossus",
      @"The Longest Journey"
    ];
    
    CQCategory *adventureCategory = [[CQCategory alloc] init];
    adventureCategory.name = @"Adventure";
    adventureCategory.options = adventure;
    
    CQCategory *horrorCategory = [[CQCategory alloc] init];
    horrorCategory.name = @"Horror";
    horrorCategory.options = horror;
    
    CQCategory *shooterCategory = [[CQCategory alloc]init];
    shooterCategory.name = @"Shooter";
    shooterCategory.options = shooter;
    
    return @[adventureCategory, horrorCategory, shooterCategory];
    
}
@end
