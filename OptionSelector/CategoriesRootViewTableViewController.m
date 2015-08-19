//
//  CategoriesRootViewTableViewController.m
//  OptionSelector
//
//  Created by Justine Gartner on 8/11/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "CategoriesRootViewTableViewController.h"
#import "ListTableViewController.h"
#import "CQCategory.h"
#import "CQShadesData.h"



@interface CategoriesRootViewTableViewController () <ListTableViewControllerDelegate>

@property (nonatomic)CQShadesData *model;

@property (nonatomic)NSArray *data;

@end

@implementation CategoriesRootViewTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.model = [[CQShadesData alloc] init];
    
    [self.model initializeData];
    
    self.data = @[self.model.red, self.model.yellow, self.model.blue];
    
    self.navigationItem.title = @"Shades";
    
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
    
    //If there was no initial text on the detailTextLabel then the label would have 0 width/0 height, thereby making the detailTextLabel non-existent.  Not sure why this was happening...
    //By setting an empty space as default it sizes correctly
    
    if (c.selectedOption) {
        NSLog(@"Valid selected value");
        cell.detailTextLabel.text = c.selectedOption;
        cell.backgroundColor = c.selectedShadeColor;
        cell.textLabel.textColor = [UIColor lightGrayColor];
    } else {
        cell.detailTextLabel.text = @" ";

    }

    UIFont *myFont = [ UIFont fontWithName: @"Marion" size: 25.0 ];
    cell.textLabel.font  = myFont;
    
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

-(void) didSelectShade: (NSString *)shade withColor: (UIColor *)color atIndexPath: (NSIndexPath *) indexPath{
    
    
    ((CQCategory *) self.data[indexPath.row]).selectedOption = shade;
    ((CQCategory *) self.data[indexPath.row]).selectedShadeColor = color;
    
    [self.tableView reloadData];
    
    NSLog(@"Did select shade: %@", shade);
}


@end
