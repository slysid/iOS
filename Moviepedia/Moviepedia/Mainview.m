//
//  Mainview.m
//  Moviepedia
//
//  Created by Bharath Kumar Devaraj on 7/4/13.
//  Copyright (c) 2013 Bharath Kumar Devaraj. All rights reserved.
//

#import "Mainview.h"
#import "Config.h"

@implementation Mainview
@synthesize toolBar;
@synthesize tableLabel;
@synthesize mainTableView;
@synthesize horizontalTableview;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self)
    {
        toolBar = [[UIToolbar alloc]initWithFrame:CGRectMake(0, 0, kScreenWidth, 50)];
        [toolBar setTintColor:[UIColor blackColor]];
        [self setBackgroundColor:[UIColor grayColor]];
        [self addSubview:toolBar];
        
        [self setLabelView];
        [self setTableView];
        [self setTableViewHorizontal];
        
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

-(void) setLabelView
{
    tableLabel = [[UILabel alloc]initWithFrame:CGRectMake(kLabelXOffset, kLabelYOffset, kScreenWidth - 10, 200)];
    [tableLabel setBackgroundColor:[UIColor blackColor]];
    [tableLabel setUserInteractionEnabled:YES];
    [self addSubview:tableLabel];
}

-(void) setTableView
{
    mainTableView = [[UITableView alloc]initWithFrame:CGRectMake(kTableXOffset, kTableYOffset, kScreenWidth - 10, kTableHeight) style:UITableViewStylePlain];
    [self addSubview:mainTableView];
}

-(void) setTableViewHorizontal
{
    CGFloat tableLabelWidth = [tableLabel bounds].size.width;
    CGFloat tableLabelHeight = [tableLabel bounds].size.height;
    
    horizontalTableview = [[UITableView alloc]initWithFrame:CGRectMake(57, -53, tableLabelHeight - 4, tableLabelWidth - 4) style:UITableViewStylePlain];
    CGAffineTransform rotateTable = CGAffineTransformMakeRotation(-M_PI_2);
    [horizontalTableview setTransform:rotateTable];
    [horizontalTableview setShowsHorizontalScrollIndicator:NO];
    [horizontalTableview setShowsVerticalScrollIndicator:NO];
    [tableLabel addSubview:horizontalTableview];
}

@end
