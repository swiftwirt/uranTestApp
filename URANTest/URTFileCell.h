//
//  URTFileCell.h
//  URANTest
//
//  Created by Ivashin Dmitry on 2/25/17.
//  Copyright © 2017 Ivashin Dmitry. All rights reserved.
//

#import <MGSwipeTableCell/MGSwipeTableCell.h>
#import "URTFile.h"

@interface URTFileCell : MGSwipeTableCell

@property (weak, nonatomic) IBOutlet UIView *orangeColorolorTagView;
@property (weak, nonatomic) IBOutlet UIView *blueColorTagView;
@property (weak, nonatomic) IBOutlet UIImageView *fileTypeImageView;
@property (weak, nonatomic) IBOutlet UILabel *fileNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *fileModifiedDateLabel;

@property (weak, nonatomic) URTFile *fileModel;

@end
