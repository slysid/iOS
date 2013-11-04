//
//  SourceData.m
//  Tableview
//
//  Created by Bharath Kumar Devaraj on 11/4/13.
//  Copyright (c) 2013 Bharath Kumar Devaraj. All rights reserved.
//

#import "SourceData.h"

@implementation SourceData
@synthesize relImageURL;


-(id) init
{
    self = [super init];
    
    if(self)
    {
        relImageURL = [[NSMutableArray alloc]init];
        [relImageURL addObject:@"FirstRow"];
    }
    
    return self;
    
}

@end
