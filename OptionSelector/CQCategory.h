//
//  CQCategory.h
//  OptionSelector
//
//  Created by Justine Gartner on 8/11/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CQCategory : NSObject

@property (nonatomic) NSDictionary *colors;
@property (nonatomic) NSArray *redShades;
@property (nonatomic) NSArray *yellowShades;
@property (nonatomic) NSArray *blueShades;

@property (nonatomic) NSString *selection;

-(void)initializeData;

@end
