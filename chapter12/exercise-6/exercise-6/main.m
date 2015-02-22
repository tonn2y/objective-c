//
//  main.m
//  exercise-6
//
//  Created by moony on 15/2/22.
//  Copyright (c) 2015年 moony. All rights reserved.
//

#import <Foundation/Foundation.h>

#define IS_LOWER_CASE(X) ( ((X) >= 'a') && ((X) <= 'z') )
#define IS_UPPER_CASE(X) ( ((X) >= 'A') && ((X) <= 'Z') )
#define IS_ALPHABETIC(X) ( (IS_LOWER_CASE(X)) || (IS_UPPER_CASE(X)) )
#define IS_DIGIT(X) ( ((X) >= 0) && ((X) <= 9) )
#define IS_SPECIAL(X) ( (!(IS_ALPHABETIC(X))) && (!(IS_DIGIT(X))) )

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        char a = '&';
        
        NSLog(@"the char '%c' is special %i",a,IS_SPECIAL(a));
    }
    return 0;
}
