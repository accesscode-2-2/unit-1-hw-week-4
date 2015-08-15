//
//  CategoriesTableViewController.m
//  OptionSelector
//
//  Created by Kaisha Jones on 8/13/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "CategoriesTableViewController.h"
#import "CQCategory.h"
#import "OptionsTableViewController.h"

@interface CategoriesTableViewController ()

@property (nonatomic) NSArray *categories;

@end

@implementation CategoriesTableViewController

- (void) initializeData
{
    CQCategory *moodCategory = [[CQCategory alloc]init];
    moodCategory.name = @"Mood";
    moodCategory.options = @[
                              @"Happy",
                              @"Sad",
                              @"Angry",
                              
                              ];




    CQCategory *happyEmotionCategory = [[CQCategory alloc]init];
    happyEmotionCategory.name = @"HappyEmotion";
    happyEmotionCategory.options = @[
                                 @"Joy",
                                 @"Bliss",
                                 @"Hopeful",
                                 @"Excited",
                                 @"Delight",
                                 @"Hope",
                                 @"Triumph",
                                 @"Pride"
                                 ];
    
    CQCategory *sadEmotionCategory = [[CQCategory alloc]init];
    sadEmotionCategory.name = @"SadEmotion";
    sadEmotionCategory.options = @[
                                     @"Depression",
                                     @"Anguish",
                                     @"Dispair",
                                     @"Shame",
                                     @"Guilt",
                                     @"Sullen",
                                     @"Neglect",
                                     ];
    
    
    CQCategory *angerEmotionCategory = [[CQCategory alloc]init];
    angerEmotionCategory.name = @"angerEmotion";
    angerEmotionCategory.options = @[
                                     @"Rage",
                                     @"Grumpy",
                                     @"Disgust",
                                     @"Envy",
                                     @"Torment",
                                     @"Irritation",
                                     ];




    self.categories = @[moodCategory, happyEmotionCategory];



}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initializeData];
    
    self.navigationItem.title = @"Random Categories";
 
}


- (void)viewDidAppear:(BOOL)animated {
    [self.tableView reloadData];
    
}

#pragma mark - table view data source




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Category Name" forIndexPath:indexPath];
    
    // Configure the cell...
    
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
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    
    
    OptionsTableViewController *OTVC = segue.destinationViewController;
    NSIndexPath *indexPath = [self.tableView indexPathsForSelectedRows];
    
    CQCategory *category = [self.categories objectAtIndex:indexPath.row];
    OTVC.category = category;
    
    OTVC.delegate = self;
}

@end
