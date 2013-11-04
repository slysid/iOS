//
//  ViewController.m
//  Tableview
//
//  Created by Bharath Kumar Devaraj on 11/2/13.
//  Copyright (c) 2013 Bharath Kumar Devaraj. All rights reserved.
//

#import "ViewController.h"
#import "SourceData.h"

@interface ViewController ()
{
    NSMutableArray *tableData;
}

@end

@implementation ViewController
@synthesize tview;

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    tview = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height) style:UITableViewStylePlain];
    [tview setDataSource:self];
    [tview setDelegate:self];
    [self setView:tview];
    
    SourceData *sourceData = [[SourceData alloc]init];
    tableData = [NSMutableArray arrayWithArray:[sourceData relImageURL]];
    
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma tableview delegate methods and datasource methods

-(NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [tableData count];
}

-(UITableViewCell *)  tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    
    if(cell == nil)
    {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Cell"];
    }
    
    [[cell textLabel] setText:[tableData objectAtIndex:[indexPath row]]];
    
    return cell;
}

@end
