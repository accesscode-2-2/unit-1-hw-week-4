//
//  OSCategoryTBV.m
//  OptionSelector
//
//  Created by Jamaal Sedayao on 8/13/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "OSCategoryTBV.h"
#import "OSOptionsTBV.h"

@interface OSCategoryTBV ()

@end

@implementation OSCategoryTBV

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"Categories";
    
    self.allCategories = [[NSMutableArray alloc]init]; //important. initialize the NSMutableArray or nothing appears when view loads
    
    CQCategory * buddies = [[CQCategory alloc] init]; //initialize instance of CQCategory class
    
    buddies.name = @"Hangout Buddies";
    buddies.options = @[
                       @"Victoria",
                       @"The Crew",
                       @"Comedy pals",
                       @"Tony",
                       @"C4Q friends + Mike",
                       @"Roommates",
                       @"Mi hermano",
                ];
    buddies.selection = @" ";   // leave selection empty
    
    [self.allCategories addObject:buddies]; //adds buddies into our NSMutableArray
    
    CQCategory * food = [[CQCategory alloc]init];
    
    food.name = @"What to eat";
    food.options = @[
                     @"Chipotle",
                     @"Pizza",
                     @"Indian food",
                     @"Bahn Mi & Thai Iced Tea",
                     @"Lobster rolls",
                     @"Wings & beer",
                     @"Doughnut Plant donuts",
                     @"Go Go Curry"
                ];
    food.selection = @" ";
    
    [self.allCategories addObject:food];
    
    CQCategory * activity = [[CQCategory alloc]init];
    
    activity.name = @"Where we hanging out?";
    activity.options = @[
                        @"The Spot",
                        @"Beergarden",
                        @"My apartment",
                        @"At C4Q",
                        @"Rockaway beach",
                        @"Karaoke Cave",
                        @"Cabin in Woodstock",
                        @"Highline",
                        @"Walter's Bar",
                        @"Columbia campus"
                         ];
    activity.selection = @" ";
    
    [self.allCategories addObject:activity];
    
    
 
}

- (void) viewWillAppear:(BOOL)animated {
    [self.tableView reloadData];                //reloads data to show the selection in cell detail
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.allCategories.count; //returning the count of all objects in allCategories array
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"categoryReuseIdentifier" forIndexPath:indexPath];
    
    CQCategory *thisCategory = [self.allCategories objectAtIndex:indexPath.row];  //taking the category instance and putting it in variable of this category. use the class as a variable and not string
    
    cell.textLabel.text = thisCategory.name; //uses name property as label of string
   
        if (thisCategory.selection.length == 0){
            cell.detailTextLabel.text = @" ";
        } else {
            cell.detailTextLabel.text = thisCategory.selection;
        }
    return cell;
    
    
}

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if ([[segue identifier] isEqualToString:@"showOptionsSegue"]){
        
   //     NSLog(@"connected"); //check
      
        OSOptionsTBV *dvc = segue.destinationViewController;   //assigns OSOptionsTBV as destination segue
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow]; //takes NSIndexPath of object selected and puts into indexPath variable as other methods do automatically
        CQCategory *selectedCategory = [self.allCategories objectAtIndex:indexPath.row]; //takes object from allCategories which is selected
        dvc.optionsCategory = selectedCategory; //passes selected category in OSCategoryTBV to OSOptionsTBV using property of optionsCategory which is of type CQCategory
        
        NSLog(@"Selected %@ category with items %@", selectedCategory.name, selectedCategory.options);
    }
    
    
    
    
    
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
