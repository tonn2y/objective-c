//
//  main.m
//  exercise-1
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
        
        [aFraction print];
        NSLog(@"+");
        [bFraction print];
        NSLog(@"=");
        resultFraction = [aFraction add:bFraction];
        [resultFraction print];
        
        [aFraction print];
        NSLog(@"-");
        [bFraction print];
        NSLog(@"=");
        resultFraction = [aFraction subtract:bFraction];
        [resultFraction print];
        
        [aFraction print];
        NSLog(@"*");
        [bFraction print];
        NSLog(@"=");
        resultFraction = [aFraction multiply:bFraction];
        [resultFraction print];
        
        [aFraction print];
        NSLog(@"/");
        [bFraction print];
        NSLog(@"=");
        resultFraction = [aFraction divide:bFraction];
        [resultFraction print];
        
    }
    return 0;
}
