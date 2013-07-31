//
//  MainviewController.h
//  Moviepedia
//
//  Created by Bharath Kumar Devaraj on 7/4/13.
//  Copyright (c) 2013 Bharath Kumar Devaraj. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Mainview;
@class HorizontalTableController;
@interface MainviewController : UIViewController <UITableViewDataSource,UITableViewDelegate>

@property (nonatomic,strong) Mainview *mainView;
@property (nonatomic,strong) HorizontalTableController *horizontalTableController;

@end
