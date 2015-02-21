//
//  main.m
//  exercise-3
//
//  Created by moony on 15/2/20.
//  Copyright (c) 2015年 moony. All rights reserved.
//

#import "Fraction+NSCompairsonMethods.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Fraction *a = [[Fraction alloc]init];
        Fraction *b = [[Fraction alloc]init];
        
        [a setTo:4 over:10];
        [b setTo:2 over:5];
        
        NSLog(@"Fraction a is (%i/%i) and Fraction b is (%i/%i)",[a numerator],[a denominator],[b numerator],[b denominator]);
        NSLog(@"isLessThan = %i",[a isLessThan:b]);
        NSLog(@"isLessThanOrEqualTo = %i",[a isLessThanOrEqualTo:b]);
        NSLog(@"isEqualTo = %i",[a isEqualTo:b]);
        NSLog(@"isNotEqualTo = %i",[a isNotEqualTo:b]);
        NSLog(@"isGreaterThanOrEqualTo = %i",[a isGreaterThanOrEqualTo:b]);
        NSLog(@"isGreaterThan = %i",[a isGreaterThan:b]);
    }
    return 0;
}
