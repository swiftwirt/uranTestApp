//
//  URTFileCell.m
//  URANTest
//
//  Created by Ivashin Dmitry on 2/25/17.
//  Copyright © 2017 Ivashin Dmitry. All rights reserved.
//

#import "URTFileCell.h"

@interface URTFileCell()

@property (strong, nonatomic) UIImage *folderImaage;
@property (strong, nonatomic) UIImage *fileImaage;

@end

@implementation URTFileCell

-(void)setFileModel:(URTFileModel *)fileModel
{
    self.colorTagView.backgroundColor = fileModel.isBlue && !fileModel.isOrange ? [UIColor blueColor] : [UIColor orangeColor]; // for case when both color BOOL = true set orange as default
    self.fileTypeImageView.image = fileModel.isFolder ? self.folderImaage : [self getFileTypeImageFrom:fileModel];
    self.fileNameLabel.text = fileModel.filename;
    self.fileModifiedDateLabel.text = [NSString stringWithFormat:@"modified %@", fileModel.modDate.description];// TODO: Add formatter for Month 1, 2000
}

-(void)awakeFromNib
{
    [super awakeFromNib];
}

-(UIImage *)folderImaage
{
    return [UIImage imageNamed:@"icon_folder"];
}

-(UIImage *)getFileTypeImageFrom:(URTFileModel *) model
{
    switch (model.fileType) {
        case Image:
            return [UIImage imageNamed:@"icon_image"];
        case Movie:
            return [UIImage imageNamed:@"icon_movie"];
    }
}

@end
