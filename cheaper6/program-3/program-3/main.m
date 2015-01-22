//
//  main.m
//  program-3
//
//  Created by tonn2y on 15/1/17.
//  Copyright (c) 2015年 Tonny. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        /* 代码清单6-10 生成素数表的程序
         int p, d, isPrime;
         
         for (p = 2; p <= 50; ++p) {
         isPrime = 1;
         
         for (d = 2; d < p; ++d) {
         if (p % d == 0) {
         isPrime = 0;
         }
         }
         if ( isPrime != 0) {
         NSLog(@"%i",p);
         }
         }
         */
        
        
        /* 代码清单6-10A */
        
        int p, d;
        BOOL isPrime;
        
        for (p = 2; p <= 50; ++p) {
            isPrime = YES;
            
            for (d = 2; d < p; ++d) {
                if ( p % d == 0) {
                    isPrime = NO;
                }
            }
            
            if (isPrime ==  YES) {
                NSLog(@"%i",p);
            }
        }
    }
    return 0;
}