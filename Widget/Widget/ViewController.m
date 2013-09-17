//
//  ViewController.m
//  Widget
//
//  Created by Bharath Kumar Devaraj on 9/17/13.
//  Copyright (c) 2013 Bharath Kumar Devaraj. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    NSMutableArray *questions;
    NSMutableDictionary *allQuestions;
    UIButton *yesButton;
    UIButton *noButton;
    NSInteger rowCount;
    NSArray *keysList;
}

@end

@implementation ViewController


- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self)
    {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    rowCount = 0;
    
    questions = [[NSMutableArray alloc]initWithObjects:@"Question1",@"Question 2",@"Question 3",nil];
    allQuestions = [[NSMutableDictionary alloc]init];
    
    [allQuestions setValue:@"Button" forKey:@"Question 1"];
    [allQuestions setValue:@"Button" forKey:@"Question 2"];
    [allQuestions setValue:@"Slider" forKey:@"Question 3"];
    [allQuestions setValue:@"Button" forKey:@"Question 4"];
    [allQuestions setValue:@"Slider" forKey:@"Question 5"];
    
    keysList = [[allQuestions allKeys] sortedArrayUsingSelector:@selector(localizedCaseInsensitiveCompare:)];
    rowCount = [keysList count];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return [keysList count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell;
    UILabel *label;
    NSString *key = [keysList objectAtIndex:[indexPath row]];
    NSString *value = [allQuestions objectForKey:key];
    
    if([value isEqualToString:@"Button"])
    {
        cell = [tableView dequeueReusableCellWithIdentifier:@"yesandnocell"];
        if(cell == nil)
        {
            cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"yesandnocell"];
        }
        label = (UILabel *)[cell viewWithTag:100];
    }
    else
    {
        cell = [tableView dequeueReusableCellWithIdentifier:@"slidercell"];
        if(cell == nil)
        {
            cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"slidercell"];
        }
        label = (UILabel *)[cell viewWithTag:101];
        
    }
    
    [label setText:[keysList objectAtIndex:[indexPath row]]];
    
    return cell;
    
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Navigation logic may go here. Create and push another view controller.
    /*
     <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:@"<#Nib name#>" bundle:nil];
     // ...
     // Pass the selected object to the new view controller.
     [self.navigationController pushViewController:detailViewController animated:YES];
     */
}


-(IBAction)buttonTapped:(id)sender;
{
    if([sender tag] == 200)
    {
        NSLog(@"Yes Tapped");
    }
    else
    {
        NSLog(@"No Tapped");
    }
}

-(IBAction)sliderMoved:(id)sender
{
    NSLog(@"Slider Moved");
    
}

@end
