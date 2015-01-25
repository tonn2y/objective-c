//
//  main.m
//  exercise-5
//
//  Created by moony on 15/1/25.
//  Copyright (c) 2015年 moony. All rights reserved.
//

#import "Fraction.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Fraction *myFraction = [[Fraction alloc] init];
        //设置分数为1/3
        //[myFraction setNumerator:1];
        //[myFraction setDenominator:3];
        
        myFraction.numerator = 1;
        myFraction.denominator = 3;
        
        //显示分数
        NSLog(@"The value of myFraction is:");
        [myFraction print];
    }
    return 0;
}
