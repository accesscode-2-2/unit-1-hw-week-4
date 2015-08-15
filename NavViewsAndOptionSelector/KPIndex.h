//
//  KPIndex.h
//  NavViewsAndOptionSelector
//
//  Created by MacMan on 8/14/15.
//  Copyright (c) 2015 MacManApp. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface KPIndex : UIViewController


@property (nonatomic, strong) NSString *name;
@property (nonatomic, assign)BOOL done;

-(id)initWithName:(NSString *)name done:(BOOL)done;




@end
