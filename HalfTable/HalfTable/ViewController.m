//
//  ViewController.m
//  HalfTable
//
//  Created by Bharath Kumar Devaraj on 8/5/13.
//  Copyright (c) 2013 Bharath Kumar Devaraj. All rights reserved.
//

#import "ViewController.h"
#import "TableController.h"

#define kScreenWidth [[UIScreen mainScreen] bounds].size.width
#define kScreenHeight [[UIScreen mainScreen] bounds].size.height

@interface ViewController ()

{
    TableController *tableController;
}

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    tableController = [[TableController alloc]initWithStyle:UITableViewStyleGrouped];
    [[self view] addSubview:[tableController myTableView]];
    
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
        [[tableController myTableView] setFrame:CGRectMake(0, kScreenHeight * 0.5, kScreenWidth, kScreenHeight * 0.5)];
    } completion:nil];
   
    
}

@end
