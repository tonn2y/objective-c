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
    if (denominator ==1) {
        NSLog(@"%i",numerator);
    }
    else
    {
        NSLog(@"%i/%i",numerator, denominator);
    }
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

-(Fraction *) add:(Fraction *)f
{
    //存储相加后的结果
    Fraction *result = [[Fraction alloc] init];
    //添加两个分数
    result.numerator = numerator * f.denominator + denominator * f.numerator;
    result.denominator = denominator * f.denominator;
    [result reduce];
    return result;
}

-(Fraction *) subtract:(Fraction *)f
{
    Fraction *result = [[Fraction alloc]init];
    result.numerator = numerator * f.denominator - denominator * f.numerator;
    result.denominator = denominator * f.denominator;
    [result reduce];
    return  result;
}

-(Fraction *) multiply:(Fraction *)f
{
    Fraction *result = [[Fraction alloc] init];
    result.numerator = numerator * f.numerator;
    result.denominator = denominator * f.denominator;
    [result reduce];
    return result;
}

-(Fraction *) divide:(Fraction *)f
{
    Fraction *result = [[Fraction alloc]init];
    result.numerator = numerator * f.denominator;
    result.denominator = denominator * f.numerator;
    [result reduce];
    return result;
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
