//
//  main.m
//  exercise-1
//
//  Created by moony on 15/2/16.
//  Copyright (c) 2015年 moony. All rights reserved.
//

#import "Rectangle.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Rectangle *a, *b;
        a = [[Rectangle alloc]initWithWidth:2 andHeight:3];
        b = [[Rectangle alloc]initWithWidth:4 andHeight:6];
        
        NSLog(@"The rectangle A's area and perimeter is %g,%g:",[a area],[a perimeter]);
        NSLog(@"The rectangle B's area and perimeter is %g,%g:",[b area],[b perimeter]);

    }
    return 0;
}
