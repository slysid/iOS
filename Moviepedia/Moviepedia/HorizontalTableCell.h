//
//  HorizontalTableCell.h
//  Moviepedia
//
//  Created by Bharath Kumar Devaraj on 7/5/13.
//  Copyright (c) 2013 Bharath Kumar Devaraj. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HorizontalTableCell : UITableViewCell

+(HorizontalTableCell *) createHorizontalCell;

@property (nonatomic,strong) UIImageView *imgView;

@end
