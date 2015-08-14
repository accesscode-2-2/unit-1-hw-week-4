//
//  CQCategoryTableViewController.m
//  OptionSelector
//
//  Created by Eric Sze on 8/11/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "CQCategoryTableViewController.h"
#import "DetailTableViewController.h"
#import "CQCategory.h"
#import "DelegateDetailTableVC.h"

@interface CQCategoryTableViewController () <DelegateDetailTableVC>

@property (nonatomic) NSMutableArray *category;
@property (nonatomic) NSInteger index;

@end

@implementation CQCategoryTableViewController

// need to add selected option into CQCategoryTableViewController
- (IBAction)addButton:(UIBarButtonItem *)sender {
    
    // tutorial http://www.icodeblog.com/2008/10/03/iphone-programming-tutorial-savingretrieving-data-using-nsuserdefaults/
    
    // create NSArray named cells and set equal to table view's cells using visibleCells
    NSArray *cells = [self.tableView visibleCells];
    // create a for loop to loop through the cells.count, incrementing by 1 to check each cell
    for (int i = 0; i < cells.count; i++) {
        // store cell in a temporary variable within UITableViewCell
        UITableViewCell *tmp = cells[i];
        // first cell index = 0
        if (i == 0) {
            // NSUserDefaults: built in xcode to "call methods on it to save data"
            /* example:
            NSUserDefaults *prefs = [NSUserDefaults standardUserDefaults];
            saving an NSString
            [prefs setObject:@"TextToSave" forKey:@"keyToLookupString"];
             *setObject: (needs NSString input)
             */
            NSUserDefaults *prefs = [NSUserDefaults standardUserDefaults];
            // setObject to temp detail text labels
            [prefs setObject:tmp.detailTextLabel.text forKey:@"cell1"];
        }
        else if (i == 1) {
            NSUserDefaults *prefs = [NSUserDefaults standardUserDefaults];
            [prefs setObject:tmp.detailTextLabel.text forKey:@"cell2"];
        }
        else {
            NSUserDefaults *prefs = [NSUserDefaults standardUserDefaults];
            [prefs setObject:tmp.detailTextLabel.text forKey:@"cell3"];
        }
    }
}


- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.title = @"Option Selector";
    
    self.category = [[NSMutableArray alloc]init];
    
    // allocate memory to each CQCategory (create a variable name for each)
    // set each variable's name to its own name
    // set their options (which are NSStrings) to what will appear on the detail VC's page when clicked on
    // set selection to empty space @" " (an NSString)
    
    CQCategory *food = [[CQCategory alloc]init];
    food.name = @"Food";
    food.options = @[
                     @"Tuna Sandwich",
                     @"Grilled Chicken Penne Pasta",
                     @"Bacon Egg and Cheese",
                     @"20 Bananas",
                     @"Curry Katsu Chicken",
                     @"Nasi Lemak",
                     @"Beef Rendang",
                     ];
    food.selection = @" ";
    
    CQCategory *cars = [[CQCategory alloc]init];
    cars.name = @"Cars";
    cars.options = @[
                     @"Audi A8",
                     @"Mercedes Benz S550",
                     @"Mercedes Benz G65 AMG",
                     @"Lamborghini Huracan",
                     @"Ferrari Italia 458",
                     @"Porsche 918 Spyder",
                     ];
    cars.selection = @" ";
    
    CQCategory *games = [[CQCategory alloc]init];
    games.name = @"Games";
    games.options = @[
                       @"Mario Kart",
                       @"Need for Speed",
                       @"Diablo II",
                       @"League of Legends",
                       @"GTA V",
                       @"Call of Duty",
                       @"NBA 2k15",
                       ];
    games.selection = @" ";
    
    // add each array to the
    [self.category addObject:food];
    [self.category addObject:cars];
    [self.category addObject:games];
    
}


//- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
//    
//    // determine the section and row for our selected cell
//    NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
//    
//    // retrieve the country from self.countries that corrosponds to
//    // the selected cell
//    CQCategory *c = [self.category objectAtIndex:indexPath.row];
//    
//    // access the destinationViewController
//    DetailTableViewController *vc = segue.destinationViewController;
//    
//    // set the country property on the destinationViewController
//    vc.objects = c;
//}

//- (void)didReceiveMemoryWarning {
//    [super didReceiveMemoryWarning];
//    // Dispose of any resources that can be recreated.
//}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    // Return the number of rows in the section.
    return self.category.count;
}

-(void)DetailTableViewController:(DetailTableViewController *)viewController didSelectType:(CQCategory *)category {
    
    [self.category replaceObjectAtIndex:self.index withObject:category];
    [self.tableView reloadData];
    
}
-(void)viewWillAppear:(BOOL)animated{
    
    [super viewWillAppear:animated];
    [self.tableView reloadData];
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"categoryIdentifier" forIndexPath:indexPath];
    
    // create temporary variable and set category to each cell with indexPath.row
    CQCategory *tmp = self.category[indexPath.row];
    // set and display each cell's textLabel to the temporary variable's ".name" (an NSString)
    cell.textLabel.text = tmp.name;
    
    // create if, else if, and else statements below if stated rows, 1, 2 or 3 are selected, they will open to their corrosponding selection @" " arrays on DetailTableViewController
    
    if (indexPath.row == 0) {
        cell.detailTextLabel.text =  [tmp.selection isEqualToString:@" "] ? [[NSUserDefaults standardUserDefaults] objectForKey:@"cell1"] : tmp.selection;
    }
    else if (indexPath.row == 1) {
        cell.detailTextLabel.text = [tmp.selection isEqualToString:@" "] ? [[NSUserDefaults standardUserDefaults] objectForKey:@"cell2"]: tmp.selection;
    }
    else {
        cell.detailTextLabel.text =[tmp.selection isEqualToString:@" "] ? [[NSUserDefaults standardUserDefaults] objectForKey:@"cell3"]: tmp.selection;
    }
    
    return cell;
}


// Segue method to display detail vc's page
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // create instance of DetailTableView Controller as *detailView and set its segue as the destination View Controller which is the next "page"
    DetailTableViewController *detailView = segue.destinationViewController;
    
    // create NSIndexPath variable and set
    NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
    self.index = indexPath.row;
    CQCategory *category = self.category[indexPath.row];
    detailView.category = category;
    detailView.delegate = self;
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
