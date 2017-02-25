//
//  URTFileTableViewController.h
//  URANTest
//
//  Created by Ivashin Dmitry on 2/25/17.
//  Copyright © 2017 Ivashin Dmitry. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MGSwipeTableCell/MGSwipeButton.h>
#import <MGSwipeTableCell/MGSwipeTableCell.h>
#import "URTAppManager.h"

@interface URTFileTableViewController : UITableViewController<MGSwipeTableCellDelegate>

@property (nonatomic, strong) URTAppManager *appManager;

@end
