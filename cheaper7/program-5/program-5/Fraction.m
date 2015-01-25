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

-(void) setTo:(int)n over:(int)d
{
    numerator = n;
    denominator = d;
}

-(void) add:(Fraction *)f
{
    //添加两个分数
    numerator = numerator * f.denominator + denominator * f.numerator;
    denominator = denominator * f.denominator;
}

-(void) reduce
{
    int u = numerator;
    int v = denominator;
    
    int temp;
    
    while (v != 0) {
        temp = u % v;
        u = v;
        v = temp;
    }
    numerator /= u;
    denominator /=u;
}

@end
