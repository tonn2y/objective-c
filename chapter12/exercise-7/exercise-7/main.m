//
//  main.m
//  exercise-7
//
//  Created by moony on 15/2/22.
//  Copyright (c) 2015年 moony. All rights reserved.
//

#import <Foundation/Foundation.h>
#define ABSOLUTE_VALUE(X) ( ((X) < 0) ? (-(X)) : (X) )

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int a = 4;
        int b = -5;
        
        NSLog(@"the number %i absolute value is %i",a,ABSOLUTE_VALUE(a));
        NSLog(@"the number %i absolute value is %i",b,ABSOLUTE_VALUE(b));
    }
    return 0;
}
