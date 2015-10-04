//
//  CQCategory.m
//  OptionSelector
//
//  Created by Justine Gartner on 8/11/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#define SelectedOptionKey @"SelectedOptionName"
#define SelectedColorKey @"SelectedColor"

#import "CQCategory.h"

@implementation CQCategory

-(void)saveSelection{
    
    //archive the UIColor into NSData
    NSData *colorData = [NSKeyedArchiver archivedDataWithRootObject:self.selectedShadeColor];
    
    //create a dictionary with the selectedOption and selectedShadeColor
    NSDictionary *data = @{SelectedOptionKey : self.selectedOption,
                           SelectedColorKey : colorData
                           };
    //store the dictionary in NSUserDefaults with the key: self.name
    [[NSUserDefaults standardUserDefaults] setObject:data forKey:self.name];
    
}

-(void)loadDefaults{
    
    //load dictionary from NSUserDefaluts for the key: self.name
    NSDictionary *data = [[NSUserDefaults standardUserDefaults] objectForKey:self.name];
    
    //access the alue for the key color (NSData)
    NSData *colorData = data[SelectedColorKey];
    
    //convert the color data (NSData) to a color object (UIColor)
    UIColor *color = [NSKeyedUnarchiver unarchiveObjectWithData:colorData];
    
    if (data != nil) {
        self.selectedOption = data[SelectedOptionKey];
        self.selectedShadeColor = color;
    }
}

@end
