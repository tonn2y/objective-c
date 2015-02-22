//
//  main.m
//  exercise-4
//
//  Created by moony on 15/2/22.
//  Copyright (c) 2015年 moony. All rights reserved.
//

#import <Foundation/Foundation.h>
#define IS_UPPER_CASE(X) (((X) >= 'A') && ((X) <= 'Z'))

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        char b = 'a';
        NSLog(@"'%c' is upper case %i",b,IS_UPPER_CASE(b));
    }
    return 0;
}
