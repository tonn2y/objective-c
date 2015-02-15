//
//  main.m
//  exercise-3
//
//  Created by tonn2y on 15/1/7.
//  Copyright (c) 2015年 Tonny. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@" n  n! ");
        NSLog(@"-- -----");
        int factorial;
        for (int n=1; n<=10; n++) {
            factorial = 1;
            for (int a=n; a>0; a--) {
                factorial *=a;
            }
            NSLog(@"%2i  %i",n,factorial);
        }
    }
    return 0;
}