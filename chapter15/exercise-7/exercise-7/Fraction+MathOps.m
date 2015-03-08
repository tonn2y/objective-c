//
//  Fraction+MathOps.m
//  exercise-2
//
//  Created by moony on 15/2/20.
//  Copyright (c) 2015年 moony. All rights reserved.
//

#import "Fraction+MathOps.h"

@implementation Fraction (MathOps)

-(Fraction *) add:(Fraction *)f
{
    Fraction *result = [[Fraction alloc]init];
    
    result.numerator = (self.numerator * f.denominator) + (self.denominator * f.numerator);
    result.denominator = self.denominator * f.denominator;
    [result reduce];
    
    return result;
}

-(Fraction *) sub:(Fraction *)f
{
    Fraction *result = [[Fraction alloc]init];
    
    result.numerator = (self.numerator * f.denominator) - (self.denominator * f.numerator);
    result.denominator = self.denominator * f.denominator;
    [result reduce];
    
    return result;
}

-(Fraction *) mul:(Fraction *)f
{
    Fraction *result = [[Fraction alloc]init];
    
    result.numerator = self.numerator * f.numerator;
    result.denominator = self.denominator * f.denominator;
    [result reduce];
    
    return result;
}

-(Fraction *) div:(Fraction *)f
{
    Fraction *result = [[Fraction alloc]init];
    
    result.numerator = self.numerator * f.denominator;
    result.denominator = self.denominator * f.numerator;
    [result reduce];
    
    return result;
}

-(Fraction *) invert:(Fraction *)f
{
    Fraction *result = [[Fraction alloc]init];
    
    result.numerator = f.denominator;
    result.denominator = f.numerator;
    [result reduce];
    
    return result;
}

-(BOOL) isEqualTo:(Fraction *)f
{
    [self reduce];
    [f reduce];
    if (self.numerator == f.numerator && self.denominator == f.denominator) {
        return (BOOL)1;
    }else
    {
        return (BOOL)0;
    }
}

-(int) compare:(Fraction *)f
{
    [self reduce];
    [f reduce];
    
    double flag = (self.numerator / (double)self.denominator) - (f.numerator / (double)f.denominator);
    
    if (self.numerator == f.numerator && self.denominator == f.denominator) {
        flag = 0;
    }else if(flag < 0)
    {
        flag = -1;
    }else if(flag > 0)
    {
        flag = 1;
    }
    return flag;
}

@end