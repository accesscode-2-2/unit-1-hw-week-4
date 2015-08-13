//
//  CategoriesTableViewController.m
//  OptionSelector
//
//  Created by Zoufishan Mehdi on 8/11/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "CategoriesTableViewController.h"
#import "CQCategory.h"
#import "OptionsTableViewController.h"

@interface CategoriesTableViewController ()

//@property (nonatomic) CQCategory *model;
@property (nonatomic) NSArray *categories;

@end

@implementation CategoriesTableViewController

- (void)initializeData
{
    CQCategory *languageCategory = [[CQCategory alloc] init];
    languageCategory.name = @"Language";
    languageCategory.options = @[
                                 @"Chinese",
                                 @"Spanish",
                                 @"English",
                                 @"Hindi",
                                 @"Arabic",
                                 @"Portugese",
                                 @"Bengali",
                                 @"Russian",
                                 @"Japanese",
                                 @"Lahnda",
                                 @"Javanese",
                                 @"German",
                                 @"Korean",
                                 @"French",
                                 @"Telgu"
                                 ];
    
    
    CQCategory *highestMountainCategory = [[CQCategory alloc] init];
    highestMountainCategory.name = @"Highest Mountain";
    highestMountainCategory.options = @[
                                       @"Mount Everest",
                                       @"K2",
                                       @"Kangchenjunga",
                                       @"Lhotse",
                                       @"Makalu",
                                       @"Cho Oyu",
                                       @"Dhaulagiri I",
                                       @"Manaslu",
                                       @"Nanga Parbat",
                                       @"Annapurna I",
                                       @"Gasherbrum I",
                                       @"Broad Peak"
                                       ];
    
    
    CQCategory *innovativeCountryCategory = [[CQCategory alloc] init];
    innovativeCountryCategory.name = @"Innovative Country";
    innovativeCountryCategory.options = @[
                                           @"Finland",
                                           @"Switzerland",
                                           @"Israel",
                                           @"Japan",
                                           @"United States",
                                           @"Germany",
                                           @"Sweden",
                                           @"Netherlands",
                                           @"Singapore",
                                           @"Taiwan"
                                           ];
    
 
     self.categories   = @[languageCategory, highestMountainCategory, innovativeCountryCategory];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initializeData];
    
    
    self.navigationItem.title = @"Random Categories";
    
}

- (void)viewDidAppear:(BOOL)animated {
    [self.tableView reloadData];

}


#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return self.categories.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CategoryName" forIndexPath:indexPath];
    CQCategory *displayCategory = [self.categories objectAtIndex:indexPath.row];

    cell.textLabel.text = displayCategory.name;
    
    cell.detailTextLabel.text = displayCategory.selection; 
    
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
//     Get the new view controller using [segue destinationViewController].
//     Pass the selected object to the new view controller.
    
    OptionsTableViewController *OTVC = segue.destinationViewController;

    NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];

    CQCategory *category = [self.categories objectAtIndex:indexPath.row];
        OTVC.category = category;
    
    OTVC.delegate = self;
}


@end
