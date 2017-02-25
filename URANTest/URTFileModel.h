//
//  URTFileModel.h
//  URANTest
//
//  Created by Ivashin Dmitry on 2/25/17.
//  Copyright © 2017 Ivashin Dmitry. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSUInteger, FileType) {
    Image = 0,
    Movie = 1,
};

@interface URTFileModel : NSObject

@property (nonatomic, strong) NSString *filename;
@property (nonatomic, strong) NSString *isFolder;
@property (nonatomic, strong) NSDate *modDate;
@property (nonatomic, assign) FileType fileType;
@property (nonatomic, assign) BOOL isOrange;
@property (nonatomic, assign) BOOL isBlue;

@end
