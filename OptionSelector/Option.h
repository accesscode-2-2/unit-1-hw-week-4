//
//  Option.h
//  OptionSelector
//
//  Created by Varindra Hart on 8/13/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Option : NSObject

@property (nonatomic) NSString *name;
@property (nonatomic) NSString *selection;
@property (nonatomic) NSArray *arrayOfOptions;

-(instancetype)initWithName:(NSString *)name andArrayOfOptions:(NSArray *)array;
@end
