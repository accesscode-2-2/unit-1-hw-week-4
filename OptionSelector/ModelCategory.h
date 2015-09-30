//
//  ModelCategory.h
//  OptionSelector
//
//  Created by Christian Maldonado on 9/30/15.
//  Copyright © 2015 Mike Kavouras. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ModelCategory : NSObject

@property (nonatomic) NSMutableArray *categories;

+(instancetype)sharedInstance;

-(void)initializeModel;

@end
