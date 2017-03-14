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

typedef NS_ENUM(NSInteger, ButtonPressed) {
    Trash = 0,
    Link = 1,
    Star = 2
};

@interface URTFileTableViewController ()

@property (nonatomic, strong) NSArray *files;// of URTFile

@end

@implementation URTFileTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initialSetUp];
}

#pragma mark - initial setup

-(void)initialSetUp
{
    self.files = self.appManager.dataAPIService.getAllFiles;
    //Removes unused cells from view
    self.tableView.tableFooterView = [UIView new];
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
    ButtonPressed buttonPressed = index;
    switch (buttonPressed) {
        case Trash:
            NSLog(@"*** 🗑");
            break;
        case Link:
            NSLog(@"*** 🔗");
            break;
        case Star:
            NSLog(@"*** ⭐️");
            break;
        default:
            NSLog(@"*** Unknown button tapped!");
        }
    return NO;
}

#pragma mark - UITableViewDelegate

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    URTFile *file = self.files[indexPath.row];
    if ([file isKindOfClass:[URTFile class]]) {
        if (file.isFolder) {
            URTFileTableViewController *fileTableViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"URTFileTableViewController"];            fileTableViewController.appManager = self.appManager;
            [self.navigationController pushViewController:fileTableViewController animated:YES];
        } else {
            NSLog(@"*** %@",file.filename);
        }
    }
}

@end
