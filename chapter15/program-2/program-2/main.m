//
//  main.m
//  program-2
//
//  Created by moony on 15/2/22.
//  Copyright (c) 2015年 moony. All rights reserved.
//

//使用数字对象

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSNumber *myNumber, *floatNumber, *intNumber;
        NSInteger myInt;
        
        //整型Integer
        intNumber = @100;
        myInt = [intNumber integerValue];
        NSLog(@"%li",(long)myInt);
        
        //长整型 long value
        myNumber = @0xabcdefL;
        NSLog(@"%lx",[myNumber longValue]);
        
        myNumber = @'X';
        NSLog(@"%c", [myNumber charValue]);
        
        //浮点型 float value
        floatNumber = @100.0f;
        NSLog(@"%g", [floatNumber floatValue]);
        
        float start =1, end = 5;
        NSNumber *center = @((start + end)/2);
        NSLog(@"%g",[center floatValue]);
    }
    return 0;
}
