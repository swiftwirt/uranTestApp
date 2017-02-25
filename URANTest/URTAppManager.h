//
//  URTAppManager.h
//  URANTest
//
//  Created by Ivashin Dmitry on 2/25/17.
//  Copyright © 2017 Ivashin Dmitry. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "URTDataAPIService.h"

@interface URTAppManager : NSObject

@property (nonatomic, strong) URTDataAPIService *dataAPIService;

@end
