//
//  MainViewTableCell.m
//  Moviepedia
//
//  Created by Bharath Kumar Devaraj on 7/5/13.
//  Copyright (c) 2013 Bharath Kumar Devaraj. All rights reserved.
//

#import "MainViewTableCell.h"
#import <QuartzCore/QuartzCore.h>
#import "Config.h"

@implementation MainViewTableCell
@synthesize customImageview,customLabel,holderLabel;

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

+(MainViewTableCell *) createMaintableViewCell;
{
    MainViewTableCell *cell = [[MainViewTableCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"maincell"];
    
    if(cell)
    {
        cell.holderLabel = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, kScreenWidth - 10, kMainCellHeight)];
        [[[cell holderLabel] layer] setBorderWidth:1.0];
        
        UIView *myBack = [[UIView alloc]initWithFrame:CGRectMake(0, 0, kScreenWidth - 10, kMainCellHeight)];
        [cell setSelectedBackgroundView:myBack];
        [[cell selectedBackgroundView] setBackgroundColor:[UIColor clearColor]];
        
        
        [[cell contentView] addSubview:[cell holderLabel]];
    }
    
    return cell;
    
}



@end
