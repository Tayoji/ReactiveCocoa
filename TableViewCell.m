//
//  TableViewCell.m
//  ReactiveCocoa
//
//  Created by Tayoji on 16/1/26.
//  Copyright © 2016年 Tayoji. All rights reserved.
//

#import "TableViewCell.h"

@implementation TableViewCell

- (void)awakeFromNib {
    // Initialization code
    self.desLabel.text=@"再次震撼所有人，马云讲出\n2016真相！";
    UIView * lineView = [[UIView alloc] initWithFrame:CGRectMake(0,111.5, 320, .5)];
    lineView.backgroundColor=[UIColor colorWithRed:0 green:0 blue:0 alpha:.2];
    [self.contentView addSubview:lineView];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
