//
//  main.m
//  exercise-2
//
//  Created by tonn2y on 15/1/6.
//  Copyright (c) 2015年 Tonny. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        double C, F = 27;
        C = (F - 32) / 1.8;
        NSLog(@"The result is %g",C);
    }
    return 0;
}
