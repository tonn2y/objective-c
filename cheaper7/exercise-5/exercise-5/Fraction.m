//
//  Fraction.m
//  program-1
//
//  Created by moony on 15/1/25.
//  Copyright (c) 2015年 moony. All rights reserved.
//

#import "Fraction.h"

@implementation Fraction

//@synthesize numerator, denominator;

-(void) print
{
    NSLog(@"%i/%i",_numerator, _denominator);
}

-(double) convertToNum
{
    if (_denominator != 0) {
        return (double) _numerator/ _denominator;
    }
    else
    {
        return NAN;
    }
}

@end
