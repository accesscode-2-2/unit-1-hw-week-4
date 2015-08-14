//
//  MainList.m
//  OptionSelector
//
//  Created by Fatima Zenine Villanueva on 8/11/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "MainList.h"
#import "ObjectsInsideLists.h"
#import "CQCategory.h"
#import "SubList.h"

@interface MainList ()

@property (nonatomic) ObjectsInsideLists *model;

@end

@implementation MainList

- (void)viewDidLoad {
    [super viewDidLoad];
    // loads the model with data from ObjectsInsideLists
    self.model = [[ObjectsInsideLists alloc]init];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self.tableView reloadData];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.model.videoGames.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MainListID" forIndexPath:indexPath];
    CQCategory *category = self.model.videoGames[indexPath.row];
    cell.textLabel.text = category.name;
    cell.detailTextLabel.text=  category.selection;
    return cell;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    NSLog(@"Preparing for Segue");
    if([segue.identifier isEqualToString:@"SubListSegue"])
    {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        SubList *sublistVC = segue.destinationViewController;
        CQCategory *category = self.model.videoGames[indexPath.row];
        sublistVC.title = category.name;
        sublistVC.sublistCQ = [self.model.videoGames objectAtIndex:indexPath.row];
        NSLog(@"%@", sublistVC.sublistCQ.options);
    }
}

@end
