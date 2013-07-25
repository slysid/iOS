//
//  GridCell.m
//  GridProject
//
//  Created by Bharath Kumar Devaraj on 7/25/13.
//  Copyright (c) 2013 Bharath Kumar Devaraj. All rights reserved.
//

#import "GridCell.h"

@implementation GridCell
@synthesize nameLabel;
@synthesize markLabel;
@synthesize buttonHoldLabel;
@synthesize deleteButton;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self)
    {
        CGRect contentViewRect = [[self contentView] bounds];
        CGFloat subCellWidth = contentViewRect.size.width / 3;
        CGFloat subCellHeight = contentViewRect.size.height;
        CGFloat subcellXPosition = contentViewRect.origin.x;
        CGFloat subcellYPoistion = contentViewRect.origin.y;
        
        nameLabel = [[UILabel alloc]initWithFrame:CGRectMake(subcellXPosition, subcellYPoistion, subCellWidth, subCellHeight)];
        [nameLabel setTextAlignment:NSTextAlignmentCenter];
        [self addSubview:nameLabel];
        
        markLabel = [[UILabel alloc]initWithFrame:CGRectMake(subcellXPosition + subCellWidth, subcellYPoistion, subCellWidth, subCellHeight)];
        [markLabel setTextAlignment:NSTextAlignmentCenter];
        [self addSubview:markLabel];
        
        buttonHoldLabel = [[UILabel alloc]initWithFrame:CGRectMake(subcellXPosition + 2 * subCellWidth, subcellYPoistion, subCellHeight, subCellHeight)];
        [buttonHoldLabel setUserInteractionEnabled:YES];
        [self addSubview:buttonHoldLabel];
        
        [self setSelectionStyle:UITableViewCellSelectionStyleNone];
        
        [self setUserInteractionEnabled:YES];
        
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
