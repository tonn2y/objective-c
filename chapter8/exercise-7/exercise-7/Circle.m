//
//  Circle.m
//  exercise-5
//
//  Created by moony on 15/1/27.
//  Copyright (c) 2015年 moony. All rights reserved.
//

#import "Circle.h"

@implementation Circle

@synthesize radius;

-(float) circumference
{
    return 2 * M_PI * radius;
}

-(float) area
{
    return M_PI * radius * radius;
}

@end
