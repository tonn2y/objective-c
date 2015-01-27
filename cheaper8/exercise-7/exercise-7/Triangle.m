//
//  Triangle.m
//  exercise-5
//
//  Created by moony on 15/1/27.
//  Copyright (c) 2015年 moony. All rights reserved.
//

#import "Triangle.h"

@implementation Triangle

@synthesize aValue, bValue, cValue;

-(float) perimeter
{
    return aValue + bValue + cValue;
}

-(float) area
{
    return sqrtf((self.perimeter / 2)*((self.perimeter / 2) - aValue)*((self.perimeter / 2) - bValue) * ((self.perimeter / 2) - cValue));
}

-(void) setAVal:(float)a BVal:(float)b CVal:(float)c
{
    aValue = a;
    bValue = b;
    cValue = c;
}

@end
