//
//  ViewController.h
//  TwoTableview
//
//  Created by Bharath Kumar Devaraj on 8/7/13.
//  Copyright (c) 2013 Bharath Kumar Devaraj. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>

@property (nonatomic,strong) IBOutlet UITableView *table1;
@property (nonatomic,strong) IBOutlet UITableView *table2;

@end
