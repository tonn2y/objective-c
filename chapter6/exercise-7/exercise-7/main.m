//
//  main.m
//  exercise-7
//
//  Created by moony on 15/1/24.
//  Copyright (c) 2015年 moony. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int p, d, isPrime;
        
        for (p = 2; p <= 50; ++p) {
            isPrime = 1;
            
            if (p > 2 && p % 2 == 0) {
                continue;
            }
            
            for (d = 2; d < p; ++d) {
                if (p % d == 0) {
                    isPrime = 0;
                }
            }
            if ( isPrime != 0) {
                NSLog(@"%i",p);
            }
        }
    }
    return 0;
}
