//
//  CQCategory.h
//  OptionSelector
//
//  Created by Natalia Estrella on 8/12/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//


#import <Foundation/Foundation.h>

@interface CQCategory : NSObject

@property (nonatomic) NSString *name;
@property (nonatomic) NSArray *options;
@property (nonatomic) NSString *selection;


-(void)saveSelection;
-(void)loadDefautls;
@end
