//
//  CQCategory.h
//  OptionSelector
//
//  Created by Shena Yoshida on 8/11/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CQCategory : NSObject // class name = CQCategory

@property (nonatomic) NSString *name; // set public properties for CQCategory
@property (nonatomic) NSArray *options;
@property (nonatomic) NSString *selection;

- (instancetype)initWithCategoryType:(NSString *)type;



@end
