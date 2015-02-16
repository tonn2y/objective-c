//
//  main.m
//  exercise-3
//
//  Created by moony on 15/2/16.
//  Copyright (c) 2015年 moony. All rights reserved.
//

#import "Fraction.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Fraction *a,*b,*c;
        NSLog(@"Fraction add counter:%i",[Fraction counter]);
        
        a = [[Fraction alloc]init];
        b = [[Fraction alloc]init];
        c = [[Fraction alloc]init];
        
        [a setTo:1 over:10];
        [b setTo:1 over:2];
        [c setTo:2 over:6];
        
        [a add:b];
        [a add:c];
        
        NSLog(@"Fraction add counter:%i",[Fraction counter]);
    }
    return 0;
}
