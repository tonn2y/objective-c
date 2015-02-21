//
//  main.m
//  exercise-4
//
//  Created by moony on 15/2/21.
//  Copyright (c) 2015年 moony. All rights reserved.
//

#import "Calculator.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Calculator *cal = [[Calculator alloc] init];
        
        [cal setAccumulator:5];
        
        NSLog(@"set accumulator is %g",[cal accumulator]);
        NSLog(@"the accumulator sine is %g",[cal sin]);
        NSLog(@"the accumulator cosine is %g",[cal cos]);
        NSLog(@"the accumulator tangent is %g",[cal tan]);
    }
    return 0;
}
