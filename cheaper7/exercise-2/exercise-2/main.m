//
//  main.m
//  exercise-2
//
//  Created by moony on 15/1/25.
//  Copyright (c) 2015年 moony. All rights reserved.
//

#import "Fraction.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Fraction *aFraction = [[Fraction alloc]init];
        Fraction *bFraction = [[Fraction alloc]init];
        
        [aFraction setTo:1 over:2];
        [bFraction setTo:1 over:4];
        
        Fraction *resultFraction;
        
        [aFraction print:NO];
        NSLog(@"+");
        [bFraction print:NO];
        NSLog(@"=");
        resultFraction = [aFraction add:bFraction];
        [resultFraction print:YES];

    }
    return 0;
}
