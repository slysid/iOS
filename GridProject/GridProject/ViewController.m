//
//  ViewController.m
//  GridProject
//
//  Created by Bharath Kumar Devaraj on 7/25/13.
//  Copyright (c) 2013 Bharath Kumar Devaraj. All rights reserved.
//

#import "ViewController.h"
#import "GridCell.h"

@interface ViewController ()
{

    NSArray *tableDataKeys;
}

@end

@implementation ViewController
@synthesize nameField;
@synthesize markField;
@synthesize addButton;
@synthesize gridTable;
@synthesize tableData;
@synthesize deletButton;


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    tableData = [[NSMutableDictionary alloc]init];
    [tableData setValue:[NSString stringWithFormat:@"%d",80] forKey:@"Name1"];
    [tableData setValue:[NSString stringWithFormat:@"%d",90] forKey:@"Name2"];
    [tableData setValue:[NSString stringWithFormat:@"%d",100] forKey:@"Name3"];
    
    [gridTable setDelegate:self];
    [gridTable setDataSource:self];
    [markField setDelegate:self];
    [nameField setDelegate:self];
    
    tableDataKeys = [[NSArray alloc]initWithArray:[tableData allKeys]];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)addButtonTapped:(id)sender
{
    NSString *name = [nameField text];
    NSString *mark = [markField text];
    
    [nameField resignFirstResponder];
    [markField resignFirstResponder];
    
    [tableData setValue:mark forKey:name];
    tableDataKeys = [tableData allKeys];
    
    [gridTable reloadData];
    
}


#pragma Tableview Datasource Methods

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

-(NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [tableData count];
}

-(UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    GridCell *cell = [tableView dequeueReusableCellWithIdentifier:@"gridcell"];
    
    if(cell == nil)
    {
        cell = [[GridCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"gridcell"];
        deletButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        [deletButton setFrame:CGRectMake(5,0,37,37)];
        [deletButton setTitle:@"X" forState:UIControlStateNormal];
        [deletButton setTitle:@"X" forState:UIControlStateHighlighted];
        [deletButton addTarget:self action:@selector(deletButtonTapped:) forControlEvents:UIControlEventTouchDown];
        [deletButton setTag:[indexPath row]];
        [[cell buttonHoldLabel] addSubview:deletButton];
    }
    
    NSString *key = [tableDataKeys objectAtIndex:[indexPath row]];
    [[cell nameLabel] setText:key];
    [[cell markLabel] setText:[tableData objectForKey:key]];
    
    
    
    
    
    return (UITableViewCell *)cell;
}



-(void) deletButtonTapped:(id) sender
{
    NSString *deleteKey = [tableDataKeys objectAtIndex:[sender tag]];
    
    [tableData removeObjectForKey:deleteKey];
    tableDataKeys = [tableData allKeys];
    
    [gridTable reloadData];
}

#pragma UITextViewDelegate

-(BOOL) textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}
@end
