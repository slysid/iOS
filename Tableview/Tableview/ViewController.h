//
//  ViewController.h
//  Tableview
//
//  Created by Bharath Kumar Devaraj on 11/2/13.
//  Copyright (c) 2013 Bharath Kumar Devaraj. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>


@property (nonatomic,strong) UITableView *tview;

@end
