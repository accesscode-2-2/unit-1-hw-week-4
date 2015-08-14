//
//  ListData.h
//  OptionSelector
//
//  Created by Chris David on 8/11/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ListData : NSObject

@property (nonatomic) NSString *name;
@property (nonatomic) NSString *selection;
@property (nonatomic) NSArray *options;
@property (nonatomic) NSUInteger index;

@end
