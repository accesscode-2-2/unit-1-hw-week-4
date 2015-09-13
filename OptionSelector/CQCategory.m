//
//  CQCategory.m
//  OptionSelector
//
//  Created by Kaisha Jones on 8/11/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "CQCategory.h"

@implementation CQCategory


- (instancetype)initWithCategoryType:(NSString *)type {
    self = [super init];
    if (self) {
        if ([type isEqualToString:@"Happy"]) {
            self.name = @"Happy";
            self.options = @[
                             @"Joy",
                             @"Blessed",
                             @"Bliss",
                             @"Excited",
                             @"Optimististic",
                             @"Hope",
                             @"Delight",
                             @"Proud",
                             @"Confident"
                             ];
            self.selection = @"";
        } else if ([type isEqualToString:@"Sad"]) {
            self.name = @"Sad"; // set properties
            self.options = @[
                             @"Empty",
                             @"Hopeless",
                             @"Depressed",
                             @"Devastated",
                             @"Shame",
                             @"Guilt",
                             @"Anguish",
                             @"Pain",
                             @"Neglect",
                             @"Abandoned",
                             @"Torment"
                             ];
            self.selection = @"";
            
        } else if ([type isEqualToString:@"Angry"]) {
            self.name = @"Angry";
            self.options = @[
                             @"Rage",
                             @"Furry",
                             @"Annoyed",
                             @"Irritated",
                             @"Disgust",
                             @"Pissed",
                             @"Aggravated",
                             @"Mad",
                             @"Grumpy"
                             ];
            self.selection = @"";
        }
    }
    return self;
}





@end
