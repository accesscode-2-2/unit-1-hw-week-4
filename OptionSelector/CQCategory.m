//
//  CQCategory.m
//  OptionSelector
//
//  Created by Xiulan Shi on 8/11/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "CQCategory.h"

@implementation CQCategory

- (void)saveSelection {
    
    // Store the dictionary in NSUserDefaults with the key: self.name
    [[NSUserDefaults standardUserDefaults] setObject:self.selection forKey:self.name];
}

- (void)loadDefaults {
    
    NSString *selection = [[NSUserDefaults standardUserDefaults] objectForKey:self.name];
    if (selection != nil) {
        self.selection = selection;
    }

}



@end
