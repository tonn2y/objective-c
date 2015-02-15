//
//  Complex.m
//  program-1
//
//  Created by moony on 15/2/15.
//  Copyright (c) 2015年 moony. All rights reserved.
//

#import "Complex.h"

@implementation Complex

@synthesize real, imaginary;

-(void) print
{
    NSLog(@" %g + %gi ", real, imaginary);
}

-(void) setReal:(double)a andImaginary:(double)b
{
    real = a;
    imaginary = b;
}

-(Complex *) add:(Complex *)f
{
    Complex *result = [[Complex alloc] init];
    
    result.real = real + f.real;
    result.imaginary = imaginary + f.imaginary;
    
    return result;
}

-(id) addId:(id)f
{
    id result = [[Complex alloc]init];
    
    if ([f isMemberOfClass:[Complex class]]) {
        [result setReal:(self.real + [f real])];
        [result setImaginary:(self.imaginary + [f imaginary])];
    }
    return result;
}

@end
