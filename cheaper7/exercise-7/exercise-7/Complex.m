//
//  Complex.m
//  exercise-6
//
//  Created by moony on 15/1/25.
//  Copyright (c) 2015年 moony. All rights reserved.
//

#import "Complex.h"

@implementation Complex

-(void) print
{
    NSLog(@"%g + %gi",_real,_imaginary);
}

-(Complex *) add:(Complex *)complexNum
{
    Complex *result = [[Complex alloc]init];
    
    result.real = _real + complexNum.real;
    result.imaginary = _imaginary + complexNum.imaginary;
    
    return result;
}

@end
