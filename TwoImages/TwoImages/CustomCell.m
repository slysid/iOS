//
//  CustomCell.m
//  TwoImages
//
//  Created by Bharath Kumar Devaraj on 8/1/13.
//  Copyright (c) 2013 Bharath Kumar Devaraj. All rights reserved.
//

#import "CustomCell.h"

@implementation CustomCell
@synthesize imgView1;
@synthesize imgView2;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self)
    {
        
        imgView1 = [[UIImageView alloc]init];
        imgView2 = [[UIImageView alloc]init];
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
