//
//  ViewController.m
//  TwoImages
//
//  Created by Bharath Kumar Devaraj on 8/1/13.
//  Copyright (c) 2013 Bharath Kumar Devaraj. All rights reserved.
//

#import "ViewController.h"
#import "CustomCell.h"

#define kScreenWidth [[UIScreen mainScreen]bounds].size.width
#define kScreenHeight [[UIScreen mainScreen]bounds].size.height
#define kCellHeight 150.0
#define kImageWidth 45
#define kImageHeight 45

@interface ViewController ()
{
    NSArray *sourceData;
}

@end

@implementation ViewController
@synthesize customTableView;
@synthesize tableCell;

- (void)viewDidLoad
{
    [super viewDidLoad];
    sourceData = [[NSArray alloc]initWithObjects:@"Data1",@"Data2",@"Data3",@"Data4",@"Data5",nil];
    
    
    customTableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, kScreenWidth, kScreenHeight) style:UITableViewStylePlain];
    [customTableView setDataSource:self];
    [customTableView setDelegate:self];
    
    [[self view] addSubview:customTableView];
    
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma Table Data & Delegate Methods

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [sourceData count];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    CustomCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    
    if(cell == nil)
    {
        cell = [[CustomCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
        [[cell imgView1] setFrame:CGRectMake(0, 0, kImageWidth, kImageHeight)];
        [[cell imgView2] setFrame:CGRectMake(100,0,kImageWidth,kImageHeight)];
        
        [[cell contentView] addSubview:[cell imgView1]];
        [[cell contentView] addSubview:[cell imgView2]];
    }
    
    [[cell imgView1] setImage:[UIImage imageNamed:@"facesmile.png"]];
    [[cell imgView2] setImage:[UIImage imageNamed:@"Clock-Time.png"]];
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return kCellHeight;
}

@end
