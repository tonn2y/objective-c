//
//  main.m
//  exercise-7
//
//  Created by moony on 15/3/8.
//  Copyright (c) 2015年 moony. All rights reserved.
//

#import "Fraction.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableArray *fractionArr = [[NSMutableArray alloc]init];
        
        //实例化Fraction对象
        Fraction *aFraction = [[Fraction alloc]init];
        Fraction *bFraction = [[Fraction alloc]init];
        Fraction *cFraction = [[Fraction alloc]init];
        
        //为Fraction添加数据
        [aFraction setTo:1 over:2];
        [bFraction setTo:1 over:3];
        [cFraction setTo:1 over:4];
        
        //将Fraction添加到数组中，用于后续的显示
        [fractionArr addObject:aFraction];
        [fractionArr addObject:bFraction];
        [fractionArr addObject:cFraction];
        
        for (Fraction *test in fractionArr) {
             NSLog(@"%@",[test description]);
        }
        
        
        for (Fraction *test in fractionArr) {
            NSLog(@"%i/%i",test.numerator,test.denominator);
        }
        
        NSLog(@"%@", fractionArr);
    }
    return 0;
}
