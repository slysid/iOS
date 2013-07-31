//
//  HorizontalTableCell.m
//  Moviepedia
//
//  Created by Bharath Kumar Devaraj on 7/5/13.
//  Copyright (c) 2013 Bharath Kumar Devaraj. All rights reserved.
//

#import "HorizontalTableCell.h"

@implementation HorizontalTableCell
@synthesize imgView;

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
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

+(HorizontalTableCell *) createHorizontalCell
{
    HorizontalTableCell *cell = [[HorizontalTableCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"horizontalcell"];
    
    if(cell)
    {
        cell.imgView = [[UIImageView alloc]init];
        [cell addSubview:[cell imgView]];
    }
    
    return cell;
}


@end
