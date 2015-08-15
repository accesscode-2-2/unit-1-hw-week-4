//
//  OSTableViewController.m
//  OptionSelector
//
//  Created by Varindra Hart on 8/10/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "OSTableViewController.h"
#import "Option.h"

@interface OSTableViewController ()

@property (nonatomic) NSArray * allOptionsArray;

@end

@implementation OSTableViewController
- (IBAction)saveData:(UIBarButtonItem *)sender {
    NSUserDefaults * defaults = [NSUserDefaults standardUserDefaults];
    Option *d = self.allOptionsArray[0];
    Option *c = self.allOptionsArray[1];
    Option *f = self.allOptionsArray[2];

    [defaults setObject:d.selection forKey:@"dogs"];
    [defaults setObject:c.selection forKey:@"cars"];
    [defaults setObject:f.selection forKey:@"foods"];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Option *dogs = [[Option alloc] initWithName:@"Dogs" andArrayOfOptions:@[@"Daschund", @"Rottweiler", @"Chihuahua", @"Pug", @"Siberian Husky", @"Labrador", @"Boxer", @"Pitbull", @"Dalmation"]];
    Option *cars = [[Option alloc] initWithName:@"Cars" andArrayOfOptions: @[@"Camaro", @"Chevelle", @"Civic", @"Mustang", @"GTO", @"Fusion", @"Impreza"]];
    Option *foods = [[Option alloc] initWithName:@"Foods" andArrayOfOptions:@[@"Noodles", @"Banana", @"Taco", @"PB&J", @"Strudel"]];
    self.allOptionsArray = [NSArray arrayWithObjects:dogs,cars,foods, nil];
   
    if([[NSUserDefaults standardUserDefaults] objectForKey:@"dogs"]!=nil){
        dogs.selection = [[NSUserDefaults standardUserDefaults] objectForKey:@"dogs"];
        cars.selection = [[NSUserDefaults standardUserDefaults] objectForKey:@"cars"];
        foods.selection = [[NSUserDefaults standardUserDefaults] objectForKey:@"foods"];
    }
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
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
   
    Option *option = self.allOptionsArray[indexPath.row];
    
    cell.textLabel.text = option.name;

    
    if(option.selection != nil){
        cell.detailTextLabel.text = option.selection;
    }
    else {
        cell.detailTextLabel.text = @" ";
    }
    
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
    return cell;
}

-(BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender{
    [self tableView:self.tableView didSelectRowAtIndexPath:[self.tableView indexPathForSelectedRow]];
    return YES;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    

    
}

-(void)tableView:(OSDetailTableViewController *)sender updatedSelection:(Option *)selection{
    
    NSLog(@"%@ with selection: %@", selection.name, selection.selection);
   
}



#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    
    OSDetailTableViewController *tVC = segue.destinationViewController;
    tVC.delegate = self;
    tVC.selectedCategory = self.allOptionsArray[[self.tableView indexPathForSelectedRow].row];
   
}


@end
