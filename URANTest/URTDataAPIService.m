//
//  URTDataAPIService.m
//  URANTest
//
//  Created by Ivashin Dmitry on 2/25/17.
//  Copyright © 2017 Ivashin Dmitry. All rights reserved.
//

#import "URTDataAPIService.h"
#import "URTContentDemoModel.h"

@implementation URTDataAPIService

-(NSArray *)getAllFiles
{
    return [[[URTContentDemoModel alloc] initDemoModel] getAllFiles];
}

@end
