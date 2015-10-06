//
//  CQCategory.h
//  OptionSelector
//
//  Created by Justine Gartner on 8/11/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

//Model class for a category and it's related items/options. Every category has an array of options to choose from.  Every array of options has a corresponding array of shade colors.  Selected options and selected shade colors are selected by user.
@interface CQCategory : NSObject

@property (nonatomic) NSString *name;
@property (nonatomic) NSString *detailTitle;
@property (nonatomic) NSArray *options;
@property (nonatomic) NSArray *shadeColors;
@property (nonatomic) NSString *selectedOption;
@property (nonatomic) UIColor *selectedShadeColor;

-(void)saveSelection;

-(void)loadDefaults;

@end
