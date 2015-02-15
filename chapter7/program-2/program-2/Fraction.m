//
//  Fraction.m
//  program-1
//
//  Created by moony on 15/1/25.
//  Copyright (c) 2015年 moony. All rights reserved.
//

#import "Fraction.h"

@implementation Fraction

@synthesize numerator, denominator;

-(void) print
{
    NSLog(@"%i/%i",numerator, denominator);
}

-(double) convertToNum
{
    if (denominator != 0) {
        return (double) numerator/ denominator;
    }
    else
    {
        return NAN;
    }
}

@end
