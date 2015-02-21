//
//  Square.m
//  exercise-5
//
//  Created by moony on 15/2/21.
//  Copyright (c) 2015年 moony. All rights reserved.
//

#import "Rectangle.h"
#import "Square.h"

@implementation Square
{
    Rectangle *rect;
}

-(instancetype) init
{
    rect = [[Rectangle alloc]init];
    self = [super init];
    if(rect)
    {
        [rect setWidth:0 andHeight:0];
    }
    return self;
}

-(instancetype) initWithSide:(int)s
{
    rect = [[Rectangle alloc]init];
    self = [super init];
    if (rect) {
        [rect setWidth:s andHeight:s];
    }
    return self;
}

-(void) setSide:(int)s
{
    [rect setWidth:s andHeight:s];
}

-(int) side
{
    return [rect width];
}

-(int) area
{
    return [rect area];
}

-(int) perimeter
{
    return [rect perimetr];
}

@end