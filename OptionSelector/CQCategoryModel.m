//
//  CQCategoryModel.m
//  OptionSelector
//
//  Created by Jovanny Espinal on 8/13/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "CQCategoryModel.h"
#import "CQCategory.h"

@implementation CQCategoryModel

-(void)initializeData{
    
    //Initialize category array
    self.categories = [[NSMutableArray alloc] init];
    
    //Initialize and create the first category
    CQCategory *pullRoutine = [[CQCategory alloc] init];
    pullRoutine.name = @"Pull";
    pullRoutine.options = @[@"Deadlift", @"Barbell Rows", @"Pulldowns", @"Seated Cable Rows", @"Face Pulls", @"Hammer Curls", @"Dumbell Curls"];
    pullRoutine.selection = @"";
    
    //Add the second category
    [self.categories addObject:pullRoutine];
    
    //Initialize and create the second category
    CQCategory *pushRoutine = [[CQCategory alloc] init];
    pushRoutine.name = @"Push";
    pushRoutine.options = @[@"Bench Press", @"Overhead Press", @"Incline Dumbell Press", @"Triceps Pushdowns", @"Lateral Raises", @"Overhead Triceps Extension"];
    pushRoutine.selection = @"";
    
    //Add the third category
    [self.categories addObject:pushRoutine];
    
    //Initialize and create the third category
    CQCategory *legRoutine = [[CQCategory alloc] init];
    legRoutine.name = @"Leg";
    legRoutine.options = @[@"Back Squat", @"Romanian Deadlift", @"Leg Press", @"Leg Curl", @"Calf Raises"];
    legRoutine.selection = @"";
    
    //Add the third category
    [self.categories addObject:legRoutine];
    

    
}
+(id)sharedManager{
    static CQCategoryModel *sharedMyManager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedMyManager = [[self alloc] init];
    });
    return sharedMyManager;
}

@end
