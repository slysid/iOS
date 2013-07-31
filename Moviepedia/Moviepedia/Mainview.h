//
//  Mainview.h
//  Moviepedia
//
//  Created by Bharath Kumar Devaraj on 7/4/13.
//  Copyright (c) 2013 Bharath Kumar Devaraj. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Mainview : UIView

@property (nonatomic,strong) UIToolbar *toolBar;
@property (nonatomic,strong) UILabel *tableLabel;
@property (nonatomic,strong) UITableView *mainTableView;
@property (nonatomic,strong) UITableView *horizontalTableview;

-(void) setLabelView;
-(void) setTableView;
-(void) setTableViewHorizontal;

@end
