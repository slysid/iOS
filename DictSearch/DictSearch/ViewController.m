//
//  ViewController.m
//  DictSearch
//
//  Created by Bharath Kumar Devaraj on 8/9/13.
//  Copyright (c) 2013 Bharath Kumar Devaraj. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    NSArray *dataSource;
    NSArray *keysList;
    NSMutableArray *filteredResult;
}

@end

@implementation ViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSDictionary *dict1 = [NSDictionary dictionaryWithObjectsAndKeys:@"Fish",@"name",@"sdhhs",@"description",@"null",@"colorCode",nil];
    
    NSDictionary *dict2 = [NSDictionary dictionaryWithObjectsAndKeys:@"fry",@"name",@"sdhhs",@"description",@"null",@"colorCode",nil];
    
    NSDictionary *dict3 = [NSDictionary dictionaryWithObjectsAndKeys:@"curry",@"name",@"sdhhs",@"description",@"null",@"colorCode",nil];
    
    dataSource = [NSArray arrayWithObjects:dict1,dict2,dict3,nil];
    filteredResult = [[NSMutableArray alloc]initWithCapacity:[dataSource count]];

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

-(void) filterForSearchText:(NSString *) text scope:(NSString *) scope
{
    [filteredResult removeAllObjects];
    NSPredicate *filterPredicate = [NSPredicate predicateWithFormat:@"SELF.name contains[c] %@",text];
    filteredResult = [NSMutableArray arrayWithArray:[dataSource filteredArrayUsingPredicate:filterPredicate]];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if(tableView == [[self searchDisplayController] searchResultsTableView])
    {
        return [filteredResult count];
    }
    
    return [dataSource count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *CellIdentifier = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if(cell == nil)
    {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    if(tableView == [[self searchDisplayController] searchResultsTableView])
    {
        NSString *celltext = [[filteredResult objectAtIndex:[indexPath row]] objectForKey:@"name"];
        [[cell textLabel] setText:celltext];
        
    }
    else
    {
        NSString *celltext = [[dataSource objectAtIndex:[indexPath row]] objectForKey:@"name"];
        [[cell textLabel] setText:celltext];
    }
    
    
    
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

#pragma search delegate methods

-(BOOL) searchDisplayController:(UISearchDisplayController *)controller shouldReloadTableForSearchScope:(NSInteger)searchOption
{
    [self filterForSearchText:self.searchDisplayController.searchBar.text scope:
     [[self.searchDisplayController.searchBar scopeButtonTitles] objectAtIndex:searchOption]];
    
    return YES;
}

-(BOOL) searchDisplayController:(UISearchDisplayController *)controller shouldReloadTableForSearchString:(NSString *)searchString
{
    [self filterForSearchText:searchString scope:[[[[self searchDisplayController] searchBar] scopeButtonTitles] objectAtIndex:[[[self searchDisplayController] searchBar] selectedScopeButtonIndex] ]];
    
    return YES;
}

@end
