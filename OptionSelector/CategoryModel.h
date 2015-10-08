//
//  CategoryModel.h
//  OptionSelector
//
//  Created by Xiulan Shi on 8/14/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CategoryModel : NSObject

@property (nonatomic) NSMutableArray *categories;

+ (instancetype)sharedInstance;

- (void)initializeModel;

@end
