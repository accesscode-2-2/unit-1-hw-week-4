//
//  OSDataTableViewController.m
//  OptionSelector
//
//  Created by Felicia Weathers on 8/10/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "OSDataTableViewController.h"

@interface OSDataTableViewController ()

@end

@implementation OSDataTableViewController
- (void)viewDidLoad {
    NSLog(@"data load");
    [self initializeListOfItems];
    NSLog(@"%@", self.topicNames);
}

- (void)initializeListOfItems {
    [self initializeTopicDetailsDictionary];
}


//- (void)initializeData {
//    
//    [self initializeTopicNamesArray];
//    
//}

//- (void)initializeTopicNamesArray {
//    
//    self.topicNames = @[
//                       @"Dogs",
//                       @"Cars",
//                       @"Food"];
//}
//
- (void)initializeTopicDetailsDictionary {
    NSArray *dogs = @[
                      @"Pitbull",
                      @"Poodle",
                      @"Golden Retriever",
                      @"Yorkshire Terrier",
                      @"Boxer"
                      ];
    
    NSArray *cars = @[
                      @"Camaro",
                      @"Mustang",
                      @"Corvette",
                      @"Mini Cooper",
                      @"Cayenne"
                      ];
    
    NSArray *food = @[
                      @"Pasta",
                      @"Salad",
                      @"Pizza",
                      @"Chicken",
                      @"Lobster",
                      ];
    
    
    self.topicNames = @{
                        @"dogs" : dogs,
                        @"cars" : cars,
                        @"food" : food
                        };
}





@end
