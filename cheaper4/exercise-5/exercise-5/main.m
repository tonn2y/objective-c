//
//  main.m
//  exercise-5
//
//  Created by tonn2y on 15/1/6.
//  Copyright (c) 2015年 Tonny. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        float y;
        y = (3.31e-8 + 2.01e-7) / (7.16e-6 + 2.01e-8);
        NSLog(@"The result is %e",y);
    }
    return 0;
}
