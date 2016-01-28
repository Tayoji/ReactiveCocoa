//
//  TableViewCell.h
//  ReactiveCocoa
//
//  Created by Tayoji on 16/1/26.
//  Copyright © 2016年 Tayoji. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *header;
@property (weak, nonatomic) IBOutlet UILabel *name;
@property (weak, nonatomic) IBOutlet UIImageView *desimg;
@property (weak, nonatomic) IBOutlet UILabel *desLabel;
@property (weak, nonatomic) IBOutlet UILabel *dateLabel;

@end
