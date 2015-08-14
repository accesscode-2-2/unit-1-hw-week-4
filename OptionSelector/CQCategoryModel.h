//
//  CQCategoryModel.h
//  OptionSelector
//
//  Created by Jovanny Espinal on 8/13/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CQCategoryModel : NSObject

@property (nonatomic) NSMutableArray *categories;

-(void)initializeData;
+(id)sharedManager;


@end
