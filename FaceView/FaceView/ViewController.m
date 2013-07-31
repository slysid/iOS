//
//  ViewController.m
//  FaceView
//
//  Created by Bharath Kumar Devaraj on 7/31/13.
//  Copyright (c) 2013 Bharath Kumar Devaraj. All rights reserved.
//

#import "ViewController.h"
#import "FaceRect.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize faceRect;

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    faceRect = [[FaceRect alloc]initWithFrame:CGRectMake(0, 0, 100, 100)];
    [faceRect setBackgroundColor:[UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:0.6]];
    [[self view] addSubview:faceRect];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
