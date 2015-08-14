//
//  OptionSelectorTableViewController.m
//  OptionSelector
//
//  Created by Mesfin Bekele Mekonnen on 8/10/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "OptionSelectorTableViewController.h"
#import "OptionSelectorDetailTableViewController.h"
#import "OptionSelectorDetailTableViewControllerDelegate.h"
#import "Type.h"

@interface OptionSelectorTableViewController () <OptionSelectorDetailTableViewControllerDelegate>

@property (nonatomic) NSMutableArray *array;
@property (nonatomic) NSInteger index;

@end

@implementation OptionSelectorTableViewController

- (IBAction)saveButtonTapped:(UIBarButtonItem *)sender {
    
    NSArray *indexesOfCells = [self.tableView visibleCells];
    for (int i=0; i < indexesOfCells.count; i++) {
        UITableViewCell *tmp = indexesOfCells[i];
        if (i == 0) {
            NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
            [defaults setObject:tmp.detailTextLabel.text forKey:@"cell1"];
        }
        else if(i == 1){
            NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
            [defaults setObject:tmp.detailTextLabel.text forKey:@"cell2"];
        }
        else{
            NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
            [defaults setObject:tmp.detailTextLabel.text forKey:@"cell3"];
        }
    }
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.array = [[NSMutableArray alloc]init];
    
    Type *dogs = [[Type alloc]init];
    dogs.name = @"Dogs";
    dogs.options = @[
                     @"Labrador Retriever",
                     @"German Shepherd",
                     @"Golden Retriever ",
                     @"Bulldog",
                     @"Yorksire Terrier",
                     @"Poodle",
                     @"Beagle",
                     @"Chihuahua",
                     @"Dachshund"
                     ];
    dogs.selection = @" ";
    
    Type *cats = [[Type alloc]init];
    cats.name = @"Cats";
    cats.options = @[
                     @"Cornish Rex",
                     @"Russian Blue",
                     @"Balinese Cat",
                     @"Manx Cat",
                     @"Abyssinian Cat",
                     @"Birman",
                     @"Siberian Cat",
                     @"Turkish Angora",
                     @"Norwegian Forest Cat"
                     ];
    cats.selection = @" ";
    
    Type *cars = [[Type alloc]init];
    cars.name = @"Cars";
    cars.options = @[
                     @"Ferari F-150",
                     @"Buggati",
                     @"Mercedes SLR",
                     @"Doge Dart",
                     @"Honda Civic",
                     @"Toyota Corolla",
                     @"Subaru Impreza",
                     @"Audi TT",
                     @"Porsche",
                     @"Lamborghini"
                     ];
    cars.selection = @" ";

    
    [self.array addObject:dogs];
    [self.array addObject:cats];
    [self.array addObject:cars];
    
}


#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.array.count;
}

-(void)optionSelectorDetailTableViewController:(OptionSelectorDetailTableViewController *)viewController didSelectType:(Type *)type{
    
    //This is redundant and unnecessary as the 'Type' object is a pointer and any changes made to it in the detail table view controller will reflect in this table viewController also.
    [self.array replaceObjectAtIndex:self.index withObject:type];
    [self.tableView reloadData];
    
}
-(void)viewWillAppear:(BOOL)animated{
    
    [super viewWillAppear:animated];
    [self.tableView reloadData];
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"OptionSelectorCellIdentifier" forIndexPath:indexPath];

    Type *tmp = self.array[indexPath.row];
    cell.textLabel.text = tmp.name;
    
    if (indexPath.row == 0) {
        cell.detailTextLabel.text =  [tmp.selection isEqualToString:@" "] ? [[NSUserDefaults standardUserDefaults] objectForKey:@"cell1"] : tmp.selection;
    }
    else if(indexPath.row == 1){
        cell.detailTextLabel.text = [tmp.selection isEqualToString:@" "] ? [[NSUserDefaults standardUserDefaults] objectForKey:@"cell2"]: tmp.selection;
    }
    else{
        cell.detailTextLabel.text =[tmp.selection isEqualToString:@" "] ? [[NSUserDefaults standardUserDefaults] objectForKey:@"cell3"]: tmp.selection;
    }
    
    return cell;
}
//
//-(void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath{
//    if(self.selectedData.count != 0){
//    UITableViewCell *selectedCell = self.selectedData[indexPath.row];
//    NSString *detail = selectedCell.textLabel.text;
//        cell.detailTextLabel.text = detail;
//    }
//}

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
    
    OptionSelectorDetailTableViewController *dtvc = [segue destinationViewController];
    
    NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
    self.index = indexPath.row;
    Type *type = self.array[indexPath.row];
    dtvc.type = type;
    dtvc.delegate = self;
}


@end
