//
//  AnimalDetailTableViewController.m
//  OptionSelector
//
//  Created by Lauren Caponong on 8/11/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "AnimalDetailTableViewController.h"
#import "CQCategory.h"

@interface AnimalDetailTableViewController ()

@property (nonatomic) NSMutableArray *array2;


@end




@implementation AnimalDetailTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    CQCategory *dog = [[CQCategory alloc] init];
    CQCategory *cat = [[CQCategory alloc] init];
    CQCategory *bug = [[CQCategory alloc] init];
    
    dog.name = @"Dog";
    cat.name = @"Cat";
    bug.name = @"Bug";
    
    [self.array2 addObject:dog];
    [self.array2 addObject:cat];
    [self.array2 addObject:bug];
    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.thing.options.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"AnimalTypesIdentifier2" forIndexPath:indexPath];
    
    NSString *name = self.thing.options[indexPath.row];
    
    cell.textLabel.text = name;
    
    NSString *itemToPassBack = @"PASS";
    [self.delegate addItemViewController:self didFinishEnteringItem:itemToPassBack];
    
    return cell;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath   *)indexPath
{
    [tableView cellForRowAtIndexPath:indexPath].accessoryType = UITableViewCellAccessoryCheckmark;
    
    self.thing.selection = self.thing.options[indexPath.row];
    
    [self.delegate addItemViewController:self didFinishEnteringItem:self.thing];
    
}

-(void)tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView cellForRowAtIndexPath:indexPath].accessoryType = UITableViewCellAccessoryNone;
}




@end
