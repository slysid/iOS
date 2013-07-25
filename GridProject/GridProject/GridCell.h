//
//  GridCell.h
//  GridProject
//
//  Created by Bharath Kumar Devaraj on 7/25/13.
//  Copyright (c) 2013 Bharath Kumar Devaraj. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GridCell : UITableViewCell

@property (nonatomic,strong) UILabel *nameLabel;
@property (nonatomic,strong) UILabel *markLabel;
@property (nonatomic,strong) UILabel *buttonHoldLabel;
@property (nonatomic,strong) UIButton *deleteButton;

@end
