//
//  CQTableViewController.m
//  Unit1WeekFourHomework
//
//  Created by Jackie Meggesto on 8/12/15.
//  Copyright (c) 2015 Jackie Meggesto. All rights reserved.
//

#import "CQTableViewController.h"
#import "CQCategory.h"
#import "CQDetailTableViewController.h"



@interface CQTableViewController ()
@property (nonatomic) NSMutableArray *categories;

@end

@implementation CQTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.categories = [[NSMutableArray alloc]init];
    CQCategory *saurischia = [[CQCategory alloc]init];
    CQCategory *ornithischia = [[CQCategory alloc]init];
    CQCategory *militaryPlanes = [[CQCategory alloc]init];
    saurischia.name = @"Saurischian Dinosaurs";
    ornithischia.name = @"Ornithischian Dinosaurs";
    militaryPlanes.name = @"Military Aircraft";
    saurischia.options = @[
                           @"Brachiosaurus",
                           @"Apatosaurus",
                           @"Camarasaurus",
                           @"Argentinosaurus",
                           @"Tarbosaurus",
                           @"Tyrannosaurus",
                           @"Crylophosaurus",
                           @"Deinonychus"
                           ];
    ornithischia.options = @[
                             @"Lambeosaurus",
                             @"Corythosaurus",
                             @"Styracosaurus",
                             @"Chasmosaurus",
                             @"Iguandodon",
                             @"Psittacosaurus",
                             @"Ankylosaurus",
                             @"Nodosaurus"
                             ];
    militaryPlanes.options = @[
                               @"AV-8B Harrier II",
                               @"A-10 Thunderbolt II",
                               @"F-15 Eagle",
                               @"F-22 Raptor",
                               @"F-35 Lightning II",
                               @"Sukoi Su-37",
                               @"MiG-29",
                               @"F/A-18E Super Hornet"
                               ];
    [self.categories addObject:saurischia];
    [self.categories addObject:ornithischia];
    [self.categories addObject:militaryPlanes];
    
   
}
-(void)viewWillAppear:(BOOL)animated {
    [self.tableView reloadData];
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath  {
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    CQDetailTableViewController *detailViewController = [storyboard instantiateViewControllerWithIdentifier:@"CQIdentifier"];
    detailViewController.category = self.categories[indexPath.row];
    [self.navigationController pushViewController:detailViewController animated:YES];
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
    return self.categories.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CQCell" forIndexPath:indexPath];
    
    CQCategory *cellCategory = self.categories[indexPath.row];
    cell.textLabel.text = cellCategory.name;
    cell.detailTextLabel.text = [self.categories[indexPath.row] selection];
    
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
