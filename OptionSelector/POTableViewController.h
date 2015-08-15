//
//  POTableViewController.h
//  OptionSelector
//
//  Created by Christella on 8/14/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface POTableViewController : UITableViewController {
     NSArray *donutsArray;
     NSArray *cupcakesArray;
     NSArray *jellybeansArray;
     NSArray *macaroonsArray;
    
    int pastryInt;

}

@property int pastryInt;


@end
