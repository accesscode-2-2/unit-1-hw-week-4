//
//  KPIndexListTableViewController.m
//  NavViewsAndOptionSelector
//
//  Created by MacMan on 8/14/15.
//  Copyright (c) 2015 MacManApp. All rights reserved.
//

#import "KPIndexListTableViewController.h"
#import "KPIndex.h"
#import "KPAddItemTableViewController.h"
#import "KPEditItemTableViewController.h"
@interface KPIndexListTableViewController ()

@end

@implementation KPIndexListTableViewController

@synthesize indexArray = _indexArray;





- (void)viewDidLoad {
    [super viewDidLoad];

    self.indexArray = [[NSMutableArray alloc] init];
    
    KPIndex *indexItem0 = [[KPIndex alloc] initWithName:@"use + to add an item" done:NO];
    [self.indexArray addObject:indexItem0];
    
    
    KPIndex *doneItem0 = [[KPIndex alloc] initWithName:@"click on item to edit it" done:YES];
    [self.indexArray addObject:doneItem0];
    
    KPIndex *indexItem1 = [[KPIndex alloc] initWithName:@"swipe left on an item to delete" done:NO];
    [self.indexArray addObject:indexItem1];
    
    KPIndex *indexItem2 = [[KPIndex alloc] initWithName:@"Item 2" done:NO];
    [self.indexArray addObject:indexItem2];
    
    KPIndex *indexItem3 = [[KPIndex alloc] initWithName:@"Item 3" done:NO];
    [self.indexArray addObject:indexItem3];
    
    KPIndex *indexItem4 = [[KPIndex alloc] initWithName:@"Item 4" done:NO];
    [self.indexArray addObject:indexItem4];
    
    KPIndex *indexItem5 = [[KPIndex alloc] initWithName:@"Item 5" done:NO];
    [self.indexArray addObject:indexItem5];
    
    KPIndex *indexItem6 = [[KPIndex alloc] initWithName:@"Item 6" done:NO];
    [self.indexArray addObject:indexItem6];
    
    KPIndex *indexItem7 = [[KPIndex alloc] initWithName:@"Item 7" done:NO];
    [self.indexArray addObject:indexItem7];
    
    KPIndex *indexItem8 = [[KPIndex alloc] initWithName:@"Item 8" done:NO];
    [self.indexArray addObject:indexItem8];
    
    [self.tableView reloadData];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:YES];
    [self.tableView reloadData];
}


-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if([segue.identifier isEqualToString:@"AddItemSegue"]) {
        
        UINavigationController *navCon = segue.destinationViewController;
        
        KPAddItemTableViewController *addItemTableViewController = [navCon.viewControllers objectAtIndex:0];
        addItemTableViewController.indexListTableViewController = self;
        
    } else if ([segue.identifier isEqualToString:@"EditDoneItemSegue"] ||[segue.identifier isEqualToString:@"EditNotDoneItemSegue"]) {
        
        KPEditItemTableViewController *editItemTableViewController = segue.destinationViewController;
        editItemTableViewController.item = [self.indexArray objectAtIndex:self.tableView.indexPathForSelectedRow.row];
        
    }
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return self.indexArray.count;
    
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *NotDoneCellIdentifier =@"notDoneItemCell";
    static NSString *DoneCellIdentifier =@"doneItemCell";
    
    KPIndex *currentItem = [self.indexArray objectAtIndex:indexPath.row];
    NSString *cellIdentifier = currentItem.done ? DoneCellIdentifier: NotDoneCellIdentifier;
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (cell ==nil){
        
        cell = [[UITableViewCell alloc] initWithStyle:(UITableViewCellStyleDefault) reuseIdentifier:cellIdentifier];
    }
    
    
    // Configure the cell...
    cell.textLabel.text = currentItem.name;
    return cell;
}




/*
 // Override to support conditional editing of the table view.
 - (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
 // Return NO if you do not want the specified item to be editable.
 return YES;
 }
 */


 // Override to support editing the table view.
 - (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
 if (editingStyle == UITableViewCellEditingStyleDelete) {
 // Delete the row from the data source
     [self.indexArray  removeObjectAtIndex:indexPath.row];
 [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
 } else if (editingStyle == UITableViewCellEditingStyleInsert) {
 // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
 }
 }


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
