//
//  main.m
//  exercise-1
//
//  Created by tonn2y on 15/1/7.
//  Copyright (c) 2015年 Tonny. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@" n  n*n ");
        NSLog(@"-- -----");
        for (int n=1; n<=10; n++) {
            NSLog(@"%2i  %i",n,n*n);
        }
    }
    return 0;
}
