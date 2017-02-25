//
//  URTAppManager.m
//  URANTest
//
//  Created by Ivashin Dmitry on 2/25/17.
//  Copyright © 2017 Ivashin Dmitry. All rights reserved.
//

#import "URTAppManager.h"

@implementation URTAppManager

-(URTDataAPIService *)dataAPIService
{
    if (!_dataAPIService) self.dataAPIService = [URTDataAPIService new];
    return _dataAPIService;
}

@end
