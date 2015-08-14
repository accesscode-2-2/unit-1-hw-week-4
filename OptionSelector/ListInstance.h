//
//  ListInstance.h
//  OptionSelector
//
//  Created by Chris David on 8/13/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ListInstance : NSObject

@property (nonatomic) NSMutableArray *allCategories;

-(void) initializeModel;

+ (ListInstance *)sharedInstance;

@end
