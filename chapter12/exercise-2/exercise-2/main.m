//
//  main.m
//  exercise-2
//
//  Created by moony on 15/2/22.
//  Copyright (c) 2015年 moony. All rights reserved.
//

#import <Foundation/Foundation.h>
#define MIN(a,b) ( ((a)<(b)) ? (a) : (b) )

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        double y = MIN(3, 3.5);
        
        NSLog(@"the min compare 3 and 3.5 is %g",y);
    }
    return 0;
}
