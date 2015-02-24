//
//  main.m
//  program-1
//
//  Created by moony on 15/2/22.
//  Copyright (c) 2015年 moony. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSNumber *myNumber, *floatNumber, *intNumber;
        NSInteger myInt;

        // interger 型值
        intNumber = [NSNumber numberWithInteger:100];
        myInt = [intNumber integerValue];
        NSLog(@"%li",(long)myInt);
        
        // long 型值
        myNumber = [NSNumber numberWithLong:0xabcdef];
        NSLog(@"%lx",[myNumber longValue]);
        
        // char 型值
        myNumber = [NSNumber numberWithChar:'X'];
        NSLog(@"%c",[myNumber charValue]);
        
        // float 型值
        floatNumber = [NSNumber numberWithFloat:100.00];
        NSLog(@"%g", [floatNumber floatValue]);
        
        // double 型值
        myNumber = [NSNumber numberWithDouble:12345e+15];
        NSLog(@"%lg",[myNumber doubleValue]);
        
        //警告
        NSLog(@"%li",(double)[myNumber integerValue]);
        
        //验证两个Number是否相等
        if ([intNumber isEqualToNumber:floatNumber] ==  YES) {
            NSLog(@"Number are equal");
        }
        else
        {
            NSLog(@"Number are not equal");
        }
        // 验证一个Number是否小于、等于或大于另一个Number
        if ([intNumber compare:myNumber] == NSOrderedAscending) {
            NSLog(@"Frist number is less than second");
        }
    }
    return 0;
}
