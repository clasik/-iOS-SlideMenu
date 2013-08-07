//
//  MenuCell.m
//  SlideMenu
//
//  Created by Lin Dennis on 13/8/7.
//  Copyright (c) 2013年 Lin Dennis. All rights reserved.
//

#import "MenuCell.h"

@implementation MenuCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:false animated:animated];

    // Configure the view for the selected state
}

@end
