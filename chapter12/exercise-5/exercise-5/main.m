//
//  main.m
//  exercise-5
//
//  Created by moony on 15/2/22.
//  Copyright (c) 2015年 moony. All rights reserved.
//

#import <Foundation/Foundation.h>
#define IS_LOWER_CASE(X) ( ((X) >= 'a') && ((X) <= 'z') )
#define IS_UPPER_CASE(X) ( ((X) >= 'A') && ((X) <= 'Z') )
#define IS_ALPHABETIC(X) ( (IS_LOWER_CASE(X)) || (IS_UPPER_CASE(X)) )

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        char a = 'k';
        NSLog(@"the char '%c' is alpabetic %i",a,IS_ALPHABETIC(a));
    }
    return 0;
}
