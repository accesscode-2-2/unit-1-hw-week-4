//
//  OptionSelectorTableViewController.m
//  OptionSelector
//
//  Created by Felicia Weathers on 8/10/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "OptionSelectorTableViewController.h"
#import "OSDataTableViewController.h"

@interface OptionSelectorTableViewController ()

@property (nonatomic) OSDataTableViewController *model;

@end

@implementation OptionSelectorTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.model = [[OSDataTableViewController alloc] init]; //when the view loads it will initialize a new instance of the model and storing it on the view controller
    [self.model initializeListOfItems]; //initalizes the model's data
    
}

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
//    return [self.model.topicNames allKeys].count;
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    
    NSArray *keys = [self.model.topicNames allKeys];
    
    return keys.count;
   }

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"optionSelectorReuseIdentifier" forIndexPath:indexPath];

    NSArray *keys = [self.model.topicNames allKeys];
  
    cell.textLabel.text = [keys objectAtIndex:indexPath.row];

    

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
    
    OSDataTableViewController *data = segue.destinationViewController;
    
    NSLog(@"preparing...");
   
    if ([segue.identifier isEqualToString:@"optionSelectorReuseIdentifier"]) {
       
        
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        
        
        
    }
}
/*
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
