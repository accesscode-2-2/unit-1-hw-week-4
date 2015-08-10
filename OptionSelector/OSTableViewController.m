//
//  OSTableViewController.m
//  OptionSelector
//
//  Created by Varindra Hart on 8/10/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "OSTableViewController.h"

@interface OSTableViewController ()

@property (nonatomic) NSString *selectedDog;
@property (nonatomic) NSString *selectedCar;
@property (nonatomic) NSString *selectedFood;
@property (nonatomic) NSString *currentKey;
@property (nonatomic) NSDictionary *dictionaryForKeys;

@end

@implementation OSTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.dictionaryForKeys = @{
                               @"Dogs" : [[NSMutableArray alloc]initWithObjects:@"", nil],
                               @"Cars" : [[NSMutableArray alloc]initWithObjects:@"", nil],
                               @"Foods": [[NSMutableArray alloc]initWithObjects:@"", nil],
                               };
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

-(void)viewWillAppear:(BOOL)animated{
    [self.tableView reloadData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete method implementation.
    // Return the number of rows in the section.
    return 3;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"OptionSelectorIdentifier" forIndexPath:indexPath];

    // Configure the cell...
    NSArray *allKeys = [self.dictionaryForKeys allKeys];
    
    cell.textLabel.text = allKeys[indexPath.row];
    
    NSArray *selectedOption = [self.dictionaryForKeys objectForKey:allKeys[indexPath.row]];
    NSString *detailText = [selectedOption objectAtIndex:0];
    
    if(detailText != nil){
        cell.detailTextLabel.text = detailText;
    }
    
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
    return cell;
}

-(BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender{
    [self tableView:self.tableView didSelectRowAtIndexPath:[self.tableView indexPathForSelectedRow]];
    return YES;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    NSArray *allKeys = [self.dictionaryForKeys allKeys];
    self.currentKey = allKeys[indexPath.row];
    
}

-(void)tableView:(OSDetailTableViewController *)sender updatedSelection:(NSString *)selection{
    
    [self reloadSelectedChoices:selection];
 
    
}

-(void)reloadSelectedChoices:(NSString *)selection{
    [(NSMutableArray*)[self.dictionaryForKeys objectForKey:self.currentKey] removeAllObjects];
    NSMutableArray *temp = [self.dictionaryForKeys objectForKey:self.currentKey];
    [temp addObject:selection];
    NSLog(@"%@",temp);
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
    
    OSDetailTableViewController *tVC = segue.destinationViewController;
    tVC.delegate = self;
    tVC.keyForArrayToBeDisplayed = self.currentKey;
    NSString *currentSelection = [[self.dictionaryForKeys objectForKey:self.currentKey] objectAtIndex:0];
    tVC.currentlySelectedOption = currentSelection;
}


@end
