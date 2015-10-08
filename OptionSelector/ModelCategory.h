//
//  ModelCategory.h
//  OptionSelector
//
//  Created by Christian Maldonado on 8/15/15.
//  Copyright © 2015 Mike Kavouras. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ModelCategory : NSObject

@property (nonatomic) NSMutableArray *categories;

+(instancetype)sharedInstance;

-(void)initializeModel;

@end
