//
//  MainViewTableCell.h
//  Moviepedia
//
//  Created by Bharath Kumar Devaraj on 7/5/13.
//  Copyright (c) 2013 Bharath Kumar Devaraj. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MainViewTableCell : UITableViewCell

@property (nonatomic,strong) UILabel *holderLabel;
@property (nonatomic,strong) UIImageView *customImageview;
@property (nonatomic,strong) UILabel *customLabel;

+(MainViewTableCell *) createMaintableViewCell;

@end
