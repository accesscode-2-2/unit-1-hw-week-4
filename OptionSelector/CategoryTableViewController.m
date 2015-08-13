//
//  CategoryTableViewController.m
//  OptionSelector
//
//  Created by Charles Kang on 8/11/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "CategoryTableViewController.h"
#import "CategoryMain.h"
#import "OptionSelectionTableViewcontrollerDelegate.h"

@interface CategoryTableViewController ()

@property (nonatomic) CategoryMain *mainCategory;

@end

@implementation CategoryTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.navigationItem setTitle:@"Categories"];
    
    self.mainCategory = [CategoryMain categoryManager];
    
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self.tableView reloadData];
}

#pragma mark - Table view data source
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return [self.mainCategory.categories count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CategoryCellIdentifier" forIndexPath:indexPath];
    
    cell.textLabel.text = [self.mainCategory.categories[indexPath.row] name];
    cell.detailTextLabel.text = [self.mainCategory.categories[indexPath.row] selection];
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
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
    - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
        
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        
        OptionSelectionTableViewController *optionSelectors = [segue destinationViewController];
        optionSelectors.categoryIndex = indexPath.row;
        optionSelectors.delegate = (id<OptionSelectionTableViewControllerDelegate>) self;
    }



    @end
