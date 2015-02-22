//
//  main.m
//  exercise-3
//
//  Created by moony on 15/2/22.
//  Copyright (c) 2015年 moony. All rights reserved.
//

#import <Foundation/Foundation.h>
#define MAX3(a,b,c) ( (MAX(a,b)) > (MAX(b,c)) )? (MAX(a,b)) : (MAX(b,c))

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int a,b,c;
        a = 3,b = 5, c=1;
        NSLog(@"the max number is %i",MAX3(a, b, c));
    }
    return 0;
}
