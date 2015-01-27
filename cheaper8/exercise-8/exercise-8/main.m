//
//  main.m
//  exercise-8
//
//  Created by moony on 15/1/27.
//  Copyright (c) 2015年 moony. All rights reserved.
//

#import "Rectangle.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Rectangle *myRect = [[Rectangle alloc]init];
        [myRect setWidth:10 andHeight:3];
        [myRect draw];
    }
    return 0;
}
