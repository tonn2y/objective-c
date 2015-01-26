//
//  main.m
//  program-5
//
//  Created by moony on 15/1/26.
//  Copyright (c) 2015年 moony. All rights reserved.
//

#import "Rectangle.h"
#import "XYPoint.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Rectangle *myRect = [[Rectangle alloc]init];
        XYPoint *myPoint = [[XYPoint alloc]init];
        
        [myPoint setX:100 andY:20];
        
        [myRect setWidth:5 andHeight:8];
        myRect.origin = myPoint;
        
        NSLog(@"Origin at (%i, %i)", [[myRect origin]x],[[myRect origin]y]);
        
        [myPoint setX:50 andY:50];
        NSLog(@"Origin at (%i, %i)", [[myRect origin]x], [[myRect origin]y]);
    }
    return 0;
}
