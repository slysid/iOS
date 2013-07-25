//
//  ViewController.h
//  GridProject
//
//  Created by Bharath Kumar Devaraj on 7/25/13.
//  Copyright (c) 2013 Bharath Kumar Devaraj. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDataSource,UITableViewDelegate,UITextFieldDelegate>

@property (nonatomic,strong) IBOutlet UITextField *nameField;
@property (nonatomic,strong) IBOutlet UITextField *markField;
@property (nonatomic,strong) IBOutlet UIButton *addButton;
@property (nonatomic,strong) IBOutlet UITableView *gridTable;

@property (nonatomic,strong) UIButton *deletButton;
@property (nonatomic,strong) NSMutableDictionary *tableData;

-(IBAction)addButtonTapped:(id)sender;

@end
