//
//  ViewController.m
//  TwoTableview
//
//  Created by Bharath Kumar Devaraj on 8/7/13.
//  Copyright (c) 2013 Bharath Kumar Devaraj. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    NSArray *table1Data;
    NSArray *table2Data;
}

@end

@implementation ViewController
@synthesize table1,table2;

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    table1Data = [[NSArray alloc]initWithObjects:@"Table1Cell1",@"Table1Cell2",@"Table1Cell3",nil];
    table2Data = [[NSArray alloc]initWithObjects:@"Table2Cell1",@"Table2Cell2",@"Table2Cell3",nil];
    
    [table1 setDelegate:self];
    [table1 setDataSource:self];
    
    [table2 setDelegate:self];
    [table2 setDataSource:self];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if(tableView == table1)
    {
        return [table1Data count];
    }
    else if(tableView == table2)
    {
        return [table2Data count];
    }
    
    return 0;
}

-(UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell;
    
    if(tableView == table1)
    {
        cell = [tableView dequeueReusableCellWithIdentifier:@"cell1"];
        
        if(cell == nil)
        {
            cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell1"];
        }
        
        [[cell textLabel] setText:[table1Data objectAtIndex:[indexPath row]]];
    }
    else
    {
        cell = [tableView dequeueReusableCellWithIdentifier:@"cell2"];
        
        if(cell == nil)
        {
            cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell2"];
        }
        
        [[cell textLabel] setText:[table2Data objectAtIndex:[indexPath row]]];
    }
    
    
    return cell;
    
}

@end
