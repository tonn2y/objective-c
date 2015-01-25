//
//  main.m
//  exercise-7
//
//  Created by moony on 15/1/25.
//  Copyright (c) 2015年 moony. All rights reserved.
//

#import "Complex.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Complex *aComplex = [[Complex alloc]init];
        Complex *bComplex = [[Complex alloc]init];
        Complex *resultComplex;
        
        [aComplex setReal:5.3];
        [aComplex setImaginary:7];
        
        [bComplex setReal:2.7];
        [bComplex setImaginary:4];
        
        [aComplex print];
        NSLog(@"+");
        [bComplex print];
        NSLog(@"=");
        
        resultComplex = [aComplex add:bComplex];
        [resultComplex print];

    }
    return 0;
}
