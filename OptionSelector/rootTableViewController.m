//
//  rootTableViewController.m
//  OptionSelector
//
//  Created by Jovanny Espinal on 8/13/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "rootTableViewController.h"


@interface rootTableViewController ()

@end

@implementation rootTableViewController


-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
    
    CQCategory *selected = [self.categories.categories objectAtIndex:indexPath.row];
    
    destinationTableViewController *destinationTableViewController = segue.destinationViewController;
    destinationTableViewController.categoryObject = selected;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    
    //Initialize rootTableViewController's CQCategoryModel object
    self.categories = [[CQCategoryModel alloc] init];
    
    //Initialize the data aka provide the array from the singleton
    [self.categories initializeData];
}

-(void)viewDidAppear:(BOOL)animated{
    [self.tableView reloadData];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

   
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    
    //Returns the rootTableViewController's CQCategoryModel's array's count.
    return [self.categories.categories count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Category" forIndexPath:indexPath];
    
    CQCategory *category = [self.categories.categories objectAtIndex:indexPath.row];
    
    NSString *categoryName = category.name;
    NSString *selected = category.selection;
    
    cell.textLabel.text = categoryName;
    
    cell.detailTextLabel.text = selected;
    
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

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
