//
//  URTFileTableViewController.m
//  URANTest
//
//  Created by Ivashin Dmitry on 2/25/17.
//  Copyright © 2017 Ivashin Dmitry. All rights reserved.
//

#import "URTFileTableViewController.h"

@interface URTFileTableViewController ()

@end

@implementation URTFileTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

#pragma mark - initial setup

-(void)initialSetUp
{
    
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.appManager.dataAPIService.getAllFiles.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"URTFileCell"];
    cell.textLabel.text = @"1";
    return cell;
}

@end
