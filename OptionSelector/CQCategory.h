//
//  CQCategory.h
//  OptionSelector
//
//  Created by Kaisha Jones on 8/11/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CQCategory : NSObject // this is the class name "CQCategory"


@property (nonatomic) NSString *name;  // set public property
@property (nonatomic) NSArray *options;
@property (nonatomic) NSString *selection;

- (instancetype)initWithCategoryType:(NSString *)type;

//-(void) initializeData;

@end
