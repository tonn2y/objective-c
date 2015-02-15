//
//  Rectangle.m
//  program-2
//
//  Created by moony on 15/1/26.
//  Copyright (c) 2015年 moony. All rights reserved.
//

#import "Rectangle.h"
#import "XYPoint.h"

@implementation Rectangle
{
    XYPoint *origin;
}

@synthesize width, height;

-(void) setWidth:(float)w andHeight:(float) h
{
    width = w;
    height = h;
}

-(void) setOrigin:(XYPoint *)pt
{
    //清单8-5B
    if (!origin) {
        origin = [[XYPoint alloc]init];
    }
    origin.x = pt.x;
    origin.y = pt.y;
}

-(float) area
{
    return width * height;
}

-(float) perimeter
{
    return (width + height) * 2;
}

-(XYPoint *) origin
{
    return origin;
}

@end

