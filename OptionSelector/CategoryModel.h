//
//  CategoryModel.h
//  OptionSelector
//
//  Created by Henna on 8/10/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CategoryModel : NSObject

@property (nonatomic) NSMutableArray *allCategories;

-(void) initializeModel;

+ (CategoryModel *)sharedInstance;


@end
