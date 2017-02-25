//
//  URTContentDemoModel.m
//  URANTest
//
//  Created by Ivashin Dmitry on 2/25/17.
//  Copyright © 2017 Ivashin Dmitry. All rights reserved.
//

#import "URTContentDemoModel.h"
#import "URTFile.h"

@interface URTContentDemoModel()

@property (nonatomic, strong) URTFile *file;
@property (nonatomic, strong) NSMutableArray *files;// of URTFile

@end

@implementation URTContentDemoModel

-(instancetype)initDemoModel
{
    self = [super init];
    if (self) {
        for (int i = 0; i <= 5; i++) {
            self.file.fileType = i % 3; // Sets file types
            // TODO: Add folder config
            [self.files addObject:self.file];
        }
    }
    return self;
}

-(URTFile *)file
{
    if (!_file) _file = [[URTFile alloc] init];
    return _file;
}

-(NSArray *)getAllFiles
{
    return self.files;
}

@end
