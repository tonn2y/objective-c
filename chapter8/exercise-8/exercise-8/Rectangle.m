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

-(void) translate:(XYPoint *)pt
{
    origin.x += pt.x;
    origin.y += pt.y;
}

-(BOOL) containsPoint:(XYPoint *)aPoint
{
    BOOL isContains = NO;
    if (origin) {
        if ((aPoint.x >= origin.x && aPoint.x <= origin.x + width) &&
            (aPoint.y >= origin.y && aPoint.y <= origin.y + width)) {
            isContains = YES;
        }
    }
    return isContains;
}

-(Rectangle *) intersect:(Rectangle *)rect
{
    Rectangle *tempRect = [[Rectangle alloc]init];
    XYPoint *myPoint = [[XYPoint alloc]init];
    BOOL isFirstPoint = NO;
    
    for (float x = rect.origin.x; x <= rect.origin.x + rect.width; x++) {
        for (float y = rect.origin.y; y <= rect.origin.y + rect.height; y++) {
            [myPoint setX:x andY:y];
            if ([self containsPoint:myPoint]) {
                if (!isFirstPoint) {
                    isFirstPoint = YES;
                    tempRect.origin = myPoint;
                }
                else
                {
                    [tempRect setWidth:x - tempRect.origin.x andHeight:y - tempRect.origin.y];
                }
            }
        }
    }
    return tempRect;
}

-(void) draw
{
    for (int h = 0; h < self.width; h++) {
        printf("-");
    }
    printf("\n");
    
    
    for (int y = 0; y < self.height; y++) {
        for (int x =0; x < self.width; x++) {
            if(x == 0 || x == self.width-1)
            {
                printf("|");
            }
            else
            {
                printf(" ");
            }
        }
        printf("\n");
    }
    for (int l = 0; l < self.width; l++) {
        printf("-");
    }
}

@end

