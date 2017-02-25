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

@property (nonatomic, strong) NSMutableArray *files;// of URTFile

@end

@implementation URTContentDemoModel

-(instancetype)initDemoModel
{
    self = [super init];
    if (self) {
        URTFile *file1 = [URTFile new];
        file1.fileType = 0;
        file1.filename = @"Photo";
        file1.modDate = [NSDate new];
        file1.isBlue = YES;
        [self.files addObject:file1];
        
        URTFile *file2 = [URTFile new];
        file2.fileType = 0;
        file2.filename = @"Picture";
        file2.modDate = [NSDate new];
        file2.isOrange = YES;
        [self.files addObject:file2];
        
        URTFile *file3 = [URTFile new];
        file3.fileType = 1;
        file3.filename = @"Movie";
        file3.modDate = [NSDate new];
        file3.isBlue = NO;
        file3.isOrange = NO;
        [self.files addObject:file3];
        
        URTFile *file4 = [URTFile new];
        file4.fileType = 2;
        file4.filename = @"Folder";
        file4.modDate = [NSDate new];
        file4.isBlue = YES;
        file4.isFolder = @"YES";
        file4.isOrange = YES;
        [self.files addObject:file4];
    }
    return self;
}

-(NSMutableArray *)files
{
    if (!_files) _files = [NSMutableArray new];
    return _files;
}

-(NSArray *)getAllFiles
{
    return self.files;
}

@end
