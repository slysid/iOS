//
//  ViewController.m
//  HalfTable
//
//  Created by Bharath Kumar Devaraj on 8/5/13.
//  Copyright (c) 2013 Bharath Kumar Devaraj. All rights reserved.
//

#import "ViewController.h"

#define kScreenWidth [[UIScreen mainScreen] bounds].size.width
#define kScreenHeight [[UIScreen mainScreen] bounds].size.height

@interface ViewController ()

{
    UITableView *tableView;
}

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 500, kScreenWidth,kScreenHeight) style:UITableViewStyleGrouped];
    [[self view] addSubview:tableView];
    
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) buttonClicked:(id)sender
{
    [UIView animateWithDuration:1.0 delay:0 options:UIViewAnimationOptionBeginFromCurrentState animations:^{
        
        [tableView setFrame:CGRectMake(0, 100, kScreenWidth, kScreenHeight * 0.5)];
    
    } completion:^(BOOL finished) {
    }];
    
}

@end
