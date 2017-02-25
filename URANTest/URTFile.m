//
//  URTFile.m
//  URANTest
//
//  Created by Ivashin Dmitry on 2/25/17.
//  Copyright © 2017 Ivashin Dmitry. All rights reserved.
//

#import "URTFile.h"

@implementation URTFile

-(id)copyWithZone:(NSZone *)zone
{
    URTFile * fileCopy = [[self class] allocWithZone:zone];
    
    fileCopy.filename = self.filename;
    fileCopy.modDate = self.modDate;
    fileCopy.isOrange = self.isOrange;
    fileCopy.isBlue = self.isBlue;
    fileCopy.isFolder = self.isFolder;
    fileCopy.fileType = self.fileType;
    
    return fileCopy;
}

@end
