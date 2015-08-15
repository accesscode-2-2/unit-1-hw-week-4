//
//  AnimalTypesTableViewController.m
//  OptionSelector
//
//  Created by Lauren Caponong on 8/11/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "AnimalTypesTableViewController.h"
#import "AnimalDetailTableViewController.h"
#import "CQCategory.h"

@interface AnimalTypesTableViewController ()  <ViewControllerAnimalDetailTableViewDelegate>

@property (nonatomic) NSMutableArray *array;
@property (nonatomic) NSInteger index;

@end




@implementation AnimalTypesTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    // initialize the array to hold our types - dog, cat, bug
    
    self.array = [[NSMutableArray alloc]init];

    
    
    // creating instances of CQCategory and initializing them
    
    CQCategory *dog = [[CQCategory alloc] init];
    CQCategory *cat = [[CQCategory alloc] init];
    CQCategory *bug = [[CQCategory alloc] init];
    
    
    
    // the 'name' property of the dog, cat, bug instances of CQCategory will be those strings
    
    dog.name = @"Dog";
    cat.name = @"Cat";
    bug.name = @"Bug";
    
    
    
    // breeds of dog - these are our options to choose from
    
    dog.options = @[
                           @"Golden Retriever",
                           @"Yorkie",
                           @"Alaskan Malamute",
                           @"Pug",
                           @"Bulldog",
                           @"Bernese Mountain Dog",
                           @"Labrador Retriver",
                           @"Mastiff"];
    dog.selection = @" ";
    
    
    
    
    
    // breeds of cat - these are our options to choose from
    
    cat.options = @[
                           @"Russian Blue",
                           @"Calico",
                           @"Siamese",
                           @"British Shorthair",
                           @"Persian",
                           @"Cornish Rex",
                           @"Scottish Fold"];
    
    cat.selection = @" ";
    
    
    
    
    
    // breeds of bug - these are our options to choose from
    
    bug.options = @[
                           @"Butterfly",
                           @"Ladybug",
                           @"Caterpillar",
                           @"Spider",
                           @"Dragonfly",
                           @"Cricket"];
    
    bug.selection = @" ";
    
    
    
    // adding these CQCategory instancse - dog, cat, bug - to our array to hold the 'types' of animal
    
    [self.array addObject:dog];
    [self.array addObject:cat];
    [self.array addObject:bug];
    
}

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self.tableView reloadData];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)addItemViewController:(AnimalDetailTableViewController *)controller didFinishEnteringItem:(CQCategory *)item{

    [self.array replaceObjectAtIndex:self.index withObject:item];
    
}




#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.array.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"AnimalTypesIdentifier" forIndexPath:indexPath];
    
    CQCategory *object = [self.array objectAtIndex:indexPath.row];
    NSString *name = object.name;
    
    cell.textLabel.text = name;
    cell.detailTextLabel.text = [object.selection isEqualToString:@" "]?@" ":object.selection;
    return cell;
}


#pragma mark - Navigation


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    NSLog(@"You clicked on an animal with a specific breed.");
    
    NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
    
    
    AnimalDetailTableViewController *detailViewController = segue.destinationViewController;
    
    self.index = indexPath.row;
    
    if (indexPath.row == 0) {
        CQCategory *dog = self.array[indexPath.row];
        detailViewController.thing = dog;
    } else if (indexPath.row == 1) {
        CQCategory *cat = self.array[indexPath.row];
        detailViewController.thing = cat;
    } else if (indexPath.row == 2) {
        CQCategory *bug = self.array[indexPath.row];
        detailViewController.thing = bug;
    }
    
}


@end
