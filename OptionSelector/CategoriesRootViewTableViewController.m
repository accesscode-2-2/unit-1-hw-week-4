//
//  CategoriesRootViewTableViewController.m
//  OptionSelector
//
//  Created by Justine Gartner on 8/11/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "CategoriesRootViewTableViewController.h"
#import "CQCategory.h"
#import "ListTableViewController.h"
#import "CQCategory.h"

@interface CategoriesRootViewTableViewController () <ListTableViewControllerDelegate>

@property (nonatomic)CQCategory *model;

@property (nonatomic)NSArray *data;

@end

@implementation CategoriesRootViewTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    CQCategory *red = [[CQCategory alloc] init];
    CQCategory *yellow = [[CQCategory alloc] init];
    CQCategory *blue = [[CQCategory alloc] init];

//    red.selected = @"";
//    yellow.selected = @"";
//    blue.selected = @"";
    
    red.name = @"Red";
    yellow.name = @"Yellow";
    blue.name = @"Blue";
    
    red.detailTitle = @"Shades of Red";
    yellow.detailTitle = @"Shades of Yellow";
    blue.detailTitle = @"Shades of Blue";
    
    red.options = @[@"cherry",
                    @"rose",
                    @"jam",
                    @"merlot",
                    @"garnet",
                    @"crimson",
                    @"ruby",
                    @"scarlet",
                    @"wine",
                    @"brick",
                    @"apple",
                    @"mahogany",
                    @"blood",
                    @"sangria",
                    @"berry",
                    @"currant",
                    @"blush",
                    @"candy",
                    @"lipstick"
                    ];
    
    yellow.options = @[@"canary",
                       @"gold",
                       @"daffodil",
                       @"flaxen",
                       @"butter",
                       @"lemon",
                       @"mustard",
                       @"corn",
                       @"medallion",
                       @"dandelion",
                       @"fire",
                       @"bumblebee",
                       @"banana",
                       @"butterscotch",
                       @"dijon",
                       @"honey",
                       @"blonde",
                       @"pineapple",
                       @"tuscan sun"
                       ];
    
    blue.options = @[@"slate",
                     @"sky",
                     @"navy",
                     @"indigo",
                     @"cobalt",
                     @"teal",
                     @"ocean",
                     @"peacock",
                     @"azure",
                     @"cerulean",
                     @"lapis",
                     @"spruce",
                     @"stone",
                     @"aegean",
                     @"berry",
                     @"denim",
                     @"admiral",
                     @"sapphire"
                     ];
    
    self.data = @[red, yellow, blue];
    
    self.navigationItem.title = @"Basics";
    
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return self.data.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ColorThesaurusIdentifier" forIndexPath:indexPath];
    
    CQCategory *c = self.data [indexPath.row];
    
    cell.textLabel.text = c.name;
    
    //If we didn't set an initial text on the detail label then the label would have 0 width/0 height...??
    //By setting an empty space as default it sizes correctly
    
    if (c.selected) {
        NSLog(@"Valid selected value");
        cell.detailTextLabel.text = c.selected;
    } else {
        cell.detailTextLabel.text = @" ";
    }
    
    
    return cell;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
    
    ListTableViewController *listOfShadesViewController = segue.destinationViewController;
    listOfShadesViewController.basic = self.data[indexPath.row];
    listOfShadesViewController.selectedBasicIndexPath = indexPath;
    listOfShadesViewController.delegate = self;
}

#pragma ListTableViewControllerDelegate

-(void) didSelectShade: (NSString *)shade atIndexPath: (NSIndexPath *) indexPath{
    
    
    ((CQCategory *) self.data[indexPath.row]).selected = shade;
    
    [self.tableView reloadData];
    
    NSLog(@"Did select shade: %@", shade);
}


@end
