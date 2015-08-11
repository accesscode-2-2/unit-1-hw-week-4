//
//  ECCategory.h
//  OptionSelector
//
//  Created by Elber Carneiro on 8/10/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ECCategory : NSObject
@property (nonatomic) NSString *name;
@property (nonatomic) NSArray *choices;
@property (nonatomic) NSString *selection;
@end
