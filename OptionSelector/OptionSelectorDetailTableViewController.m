//
//  OptionSelectorDetailTableViewController.m
//  OptionSelector
//
//  Created by Mesfin Bekele Mekonnen on 8/10/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "OptionSelectorDetailTableViewController.h"


@interface OptionSelectorDetailTableViewController ()


@end

@implementation OptionSelectorDetailTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

#pragma mark - Table view data source
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.type.options.count;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    self.type.selection = self.type.options[indexPath.row];
    [self.delegate optionSelectorDetailTableViewController:self didSelectType:self.type];
    
    NSArray *indexes = [tableView visibleCells];
    
    for(int i=0; i<indexes.count; i++){
        
        UITableViewCell *tmp = indexes[i];
        UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
        if(tmp == cell ){
            cell.accessoryType = UITableViewCellAccessoryCheckmark;
        }
        else{
            tmp.accessoryType = UITableViewCellAccessoryNone;
        }
    }

    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"OptionsDetailCellIdentifier" forIndexPath:indexPath];
    
    NSString *name;
    name = self.type.options[indexPath.row];
    
    cell.textLabel.text = name;
    
    if([name isEqualToString:self.type.selection]){
        cell.accessoryType = UITableViewCellAccessoryCheckmark;
    }
    
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
