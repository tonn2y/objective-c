//
//  main.m
//  exercise-2
//
//  Created by moony on 15/2/15.
//  Copyright (c) 2015年 moony. All rights reserved.
//

#import "Fraction.h"
#import "Complex.h"
#import "Rectangle.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        id dataValue;
        Fraction *f1 = [[Fraction alloc]init];
        Complex *c1 = [[Complex alloc]init];
        
        [f1 setTo:2 over:5];
        [c1 setReal:10.0 andImaginary:2.5];
        
        dataValue = f1;
        [dataValue print];
        
        dataValue = c1;
        [dataValue print];
        
        dataValue = [[Rectangle alloc]init];
    }
    return 0;
}
