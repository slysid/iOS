//
//  MainviewController.m
//  Moviepedia
//
//  Created by Bharath Kumar Devaraj on 7/4/13.
//  Copyright (c) 2013 Bharath Kumar Devaraj. All rights reserved.
//

#import "MainviewController.h"
#import "MainViewTableCell.h"
#import "HorizontalTableController.h"
#import "Mainview.h"
#import "Config.h"

@interface MainviewController ()
{
    MainViewTableCell *tableviewCell;
}

@end

@implementation MainviewController
@synthesize mainView;
@synthesize horizontalTableController;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self)
    {
        mainView = [[Mainview alloc]initWithFrame:CGRectMake(0, 0, kScreenWidth, kScreenHeight)];
        [self setView:mainView];
        horizontalTableController = [[HorizontalTableController alloc]initWithStyle:UITableViewStylePlain];
        [horizontalTableController setView:[mainView horizontalTableview]];
        
        
        [[mainView mainTableView] setDelegate:self];
        [[mainView mainTableView] setDataSource:self];
        
        [[mainView horizontalTableview] setDelegate:horizontalTableController];
        [[mainView horizontalTableview] setDataSource:horizontalTableController];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger) numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

-(NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 10;
}

-(UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    MainViewTableCell *cell = [tableView dequeueReusableCellWithIdentifier:@"maincell"];
    
    if(cell == nil)
    {
        cell = [MainViewTableCell createMaintableViewCell];
    }
    
    [[cell holderLabel]setText:@"Holder"];
    [[cell holderLabel] setBackgroundColor:[UIColor yellowColor]];
    
    return cell;
}

/*- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 70;
}*/

@end
