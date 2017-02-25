//
//  AppDelegate.h
//  URANTest
//
//  Created by Ivashin Dmitry on 2/25/17.
//  Copyright © 2017 Ivashin Dmitry. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "URTAppManager.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) URTAppManager *appManager;

@end

