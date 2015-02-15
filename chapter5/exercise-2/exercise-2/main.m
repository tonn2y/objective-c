//
//  main.m
//  exercise-2
//
//  Created by tonn2y on 15/1/7.
//  Copyright (c) 2015年 Tonny. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@" n  sum ");
        NSLog(@"-- -----");
        int triangularNumber =0;
        for (int n=5; n<=50; n+=5) {
            triangularNumber = n*(n+1)/2;
            NSLog(@"%2i  %i",n,triangularNumber);
        }
    }
    return 0;
}
