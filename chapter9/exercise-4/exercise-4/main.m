//
//  main.m
//  exercise-4
//
//  Created by moony on 15/2/15.
//  Copyright (c) 2015年 moony. All rights reserved.
//

#import "Complex.h"
#import "Fraction.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        id dataValue;
        Fraction *f1 = [[Fraction alloc]init];
        Complex *c1 = [[Complex alloc]init];
        
        [f1 setTo:2 over:5];
        [c1 setReal:10.0 andImaginary:2.5];
        
        dataValue = f1;
        [f1 add:f1];
        [f1 print];
        [dataValue addId:dataValue];
        [dataValue print];
        
        dataValue = c1;
        [c1 add:c1];
        [c1 print];
        [dataValue addId:dataValue];
        [dataValue print];
    }
    return 0;
}
