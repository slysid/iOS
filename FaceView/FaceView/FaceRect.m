//
//  FaceRect.m
//  FaceView
//
//  Created by Bharath Kumar Devaraj on 7/31/13.
//  Copyright (c) 2013 Bharath Kumar Devaraj. All rights reserved.
//

#import "FaceRect.h"

@implementation FaceRect

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self)
    {
        // Initialization code
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

-(void) touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
    UITouch *touch = [touches anyObject];
    CGPoint touchPoint = [touch locationInView:[self superview]];
    [self setCenter:CGPointMake(touchPoint.x, touchPoint.y)];
}

@end
