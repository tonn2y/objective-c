//
//  main.m
//  program-1
//
//  Created by moony on 15/2/16.
//  Copyright (c) 2015年 moony. All rights reserved.
//
#import "Fraction.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Fraction *a, *b;
        a = [[Fraction alloc]initWith:1 over:3];
        b = [[Fraction alloc]initWith:3 over:7];
        
        [a print];
        [b print];
        
//        [a release];
//        [b release];
    }
    return 0;
}
