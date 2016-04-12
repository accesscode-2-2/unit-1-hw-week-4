//
//  CQCategory.m
//  OptionSelector
//
//  Created by Natalia Estrella on 8/12/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "CQCategory.h"

@implementation CQCategory
-(void)saveSelection {
   [[NSUserDefaults standardUserDefaults] setObject:self.selection forKey:self.name];
    
    
}

-(void)loadDefautls {
    NSString *selection = [[NSUserDefaults standardUserDefaults] objectForKey:self.name];
    if (selection != nil) {
        self.selection = selection;
    }
    
    
    
//    //load dictionary from NSUserDefaukts for key: self.name
//    NSDictionary *data = [[NSUserDefaults standardUserDefaults]objectForKey:self.name];
//    
//    //acsss the value for the ket color (NSData)
//    NSData *colorData = data[@"color"];
//    
//    //convert the color data (NSData) to a color object (UIColor)
//    UIColor *color = [NSKeyedUnarchiver unarchiveObjectWithData:colorData];
//    
//    if (data != nil) {
//        self.selectedOption = data[@"option"];
    }


@end
