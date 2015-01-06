//
//  main.m
//  exercise-4
//
//  Created by tonn2y on 15/1/6.
//  Copyright (c) 2015年 Tonny. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        float y, x = 2.55;
        y = 3 * (x * x * x) - 5 * (x * x) + 6;
        NSLog(@"The result is %f",y);
    }
    return 0;
}
