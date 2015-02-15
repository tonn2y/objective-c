//
//  XYPoint.m
//  program-4
//
//  Created by moony on 15/1/26.
//  Copyright (c) 2015年 moony. All rights reserved.
//

#import "XYPoint.h"

@implementation XYPoint
@synthesize x, y;

-(void) setX:(float)xVal andY:(float)yVal
{
    x = xVal;
    y = yVal;
}

-(void) print
{
    NSLog(@"(%g,%g)",x,y);
}

@end
