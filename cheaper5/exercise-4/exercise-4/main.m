//
//  main.m
//  exercise-4
//
//  Created by tonn2y on 15/1/7.
//  Copyright (c) 2015年 Tonny. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        /* 代码清单5-3 生成三角数表的程序*/
         int n, triangularNumber;
         
         NSLog(@"TABLE OF TRIANGULAR NUMBERS");
         NSLog(@" n Sum from 1 to n");
         NSLog(@"-- --------");
         
         triangularNumber = 0;
         for (n =1; n <= 10; ++n) {
         triangularNumber += n;
         NSLog(@"%-2i      %i",n,triangularNumber);
         }
         
    }
    return 0;
}
