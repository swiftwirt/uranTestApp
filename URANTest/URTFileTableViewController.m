//
//  URTFileTableViewController.m
//  URANTest
//
//  Created by Ivashin Dmitry on 2/25/17.
//  Copyright © 2017 Ivashin Dmitry. All rights reserved.
//

#import "URTFileTableViewController.h"
#import "URTFileCell.h"
#import "URTFile.h"

@interface URTFileTableViewController ()

@property (nonatomic, strong) NSArray *files;

@end

@implementation URTFileTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

#pragma mark - initial setup

-(void)initialSetUp
{
    
}

-(NSArray *)files
{
    return self.appManager.dataAPIService.getAllFiles;
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.files.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    URTFileCell *cell = [tableView dequeueReusableCellWithIdentifier:@"URTFileCell"];
    cell.fileModel = self.files[indexPath.row];
    ((MGSwipeTableCell*)cell).rightButtons = @[[MGSwipeButton buttonWithTitle:@"🗑" backgroundColor:nil],[MGSwipeButton buttonWithTitle:@"🔗" backgroundColor:nil], [MGSwipeButton buttonWithTitle:@"⭐️" backgroundColor:nil]];
    ((MGSwipeTableCell*)cell).rightSwipeSettings.transition=MGSwipeTransitionDrag;
    ((MGSwipeTableCell*)cell).delegate = self;
    return cell;
}

#pragma mark - MGSwipeTableCellDelegate

- (BOOL)swipeTableCell:(MGSwipeTableCell *)cell tappedButtonAtIndex:(NSInteger)index direction:(MGSwipeDirection)direction fromExpansion:(BOOL) fromExpansion
{
    switch (index) {
        case 0:
            NSLog(@"*** 🗑");
            break;
        case 1:
            NSLog(@"*** 🔗");
            break;
        case 2:
            NSLog(@"*** ⭐️");
            break;
        default:
            NSLog(@"*** Unknown button tapped!");
        }
    return NO;
}

@end
