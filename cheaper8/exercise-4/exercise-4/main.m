//
//  main.m
//  exercise-4
//
//  Created by moony on 15/1/27.
//  Copyright (c) 2015年 moony. All rights reserved.
//

#import "Rectangle.h"
#import "XYPoint.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Rectangle *myRect = [[Rectangle alloc] init];
        XYPoint *myPoint = [[XYPoint alloc] init];
        
        [myPoint setX:100 andY:200];
        [myRect setWidth:5 andHeight:8];
        myRect.origin = myPoint;
        
        NSLog(@"Origin at (%g,%g)", myRect.origin.x, myRect.origin.y);
        
        [myPoint setX:50 andY:50];
        [myRect translate:myPoint];
        
        NSLog(@"Origin at (%g,%g)", myRect.origin.x, myRect.origin.y);
    }
    return 0;
}
