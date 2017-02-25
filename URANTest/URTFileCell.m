//
//  URTFileCell.m
//  URANTest
//
//  Created by Ivashin Dmitry on 2/25/17.
//  Copyright © 2017 Ivashin Dmitry. All rights reserved.
//

#import "URTFileCell.h"

@interface URTFileCell()

@property (nonatomic, strong) NSDateFormatter *formatter;

@end

@implementation URTFileCell

-(void)setFileModel:(URTFile *)fileModel
{
    [self configureColorTags:fileModel];
    self.fileTypeImageView.image = [self getFileTypeImageFrom:fileModel];
    self.fileNameLabel.text = fileModel.filename;
    //Configure date format
    [self.formatter setDateStyle:NSDateFormatterMediumStyle];
    self.fileModifiedDateLabel.text = [NSString stringWithFormat:@"modified %@", [self.formatter stringFromDate:fileModel.modDate]];// TODO: Add formatter for Month 1, 2000
}

-(void)awakeFromNib
{
    [super awakeFromNib];
}

-(UIImage *)getFileTypeImageFrom:(URTFile *) model
{
    switch (model.fileType) {
        case Image:
            return [UIImage imageNamed:@"icon_image"];
        case Movie:
            return [UIImage imageNamed:@"icon_movie"];
        case Folder:
            return [UIImage imageNamed:@"icon_folder"];
    }
}

-(NSDateFormatter *)formatter
{
    if (!_formatter) self.formatter = [[NSDateFormatter alloc] init];
    return _formatter;
}

-(void)configureColorTags:(URTFile *) model
{
    if (model.isBlue && model.isOrange) {
        self.orangeColorTagView.backgroundColor = [UIColor orangeColor];
        self.blueColorTagView.backgroundColor = [UIColor blueColor];
    } else if (model.isBlue && !model.isOrange) {
        [self.blueColorTagView setFrame:CGRectMake(0.0, 0.0, 5.0, self.contentView.frame.size.height)];
        self.blueColorTagView.backgroundColor = [UIColor blueColor];
    } else if (model.isOrange) {
        self.orangeColorTagView.backgroundColor = [UIColor orangeColor];
    } else {
        self.orangeColorTagView.hidden = true;
        self.blueColorTagView.hidden = true;
    }
}

@end
