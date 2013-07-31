//
//  ViewController.m
//  Moviepedia
//
//  Created by Bharath Kumar Devaraj on 7/4/13.
//  Copyright (c) 2013 Bharath Kumar Devaraj. All rights reserved.
//

#import "ViewController.h"
#import "MainviewController.h"
#import "Config.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize mainViewController;

-(id) initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if(self)
    {
        mainViewController = [[MainviewController alloc]initWithNibName:nil bundle:nil];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [[self view] addSubview:[mainViewController view]];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
