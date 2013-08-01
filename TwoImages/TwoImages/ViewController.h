//
//  ViewController.h
//  TwoImages
//
//  Created by Bharath Kumar Devaraj on 8/1/13.
//  Copyright (c) 2013 Bharath Kumar Devaraj. All rights reserved.
//

#import <UIKit/UIKit.h>

@class CustomCell;
@interface ViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>

@property (nonatomic,strong) UITableView *customTableView;
@property (nonatomic,strong) CustomCell *tableCell;

@end
