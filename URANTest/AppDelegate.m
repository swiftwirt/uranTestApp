//
//  AppDelegate.m
//  URANTest
//
//  Created by Ivashin Dmitry on 2/25/17.
//  Copyright © 2017 Ivashin Dmitry. All rights reserved.
//

#import "AppDelegate.h"
#import "URTFileTableViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    UINavigationController *navigationController = (UINavigationController*)  self.window.rootViewController;
    URTFileTableViewController *fileTableViewController = (URTFileTableViewController*) navigationController.topViewController;
    fileTableViewController.appManager = self.appManager;
    return YES;
}
//MARK: - AppManager init
-(URTAppManager *)appManager
{
    if (!_appManager) self.appManager = [URTAppManager new];
    return _appManager;
}

@end
