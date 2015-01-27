//
//  main.m
//  exercise-6
//
//  Created by moony on 15/1/27.
//  Copyright (c) 2015年 moony. All rights reserved.
//

#import "GraphicObject.h"
#import "Rectangle.h"
#import "Circle.h"
#import "Triangle.h"
#import "XYPoint.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Rectangle *myRect = [[Rectangle alloc] init];
        XYPoint *myPoint = [[XYPoint alloc] init];
        Circle *myCir = [[Circle alloc]init];
        Triangle *myTria = [[Triangle alloc]init];
        
        myCir.radius = 5;
        [myTria setAVal:5 BVal:5 CVal:5];
        
        [myPoint setX:100 andY:200];
        [myRect setWidth:5 andHeight:8];
        myRect.origin = myPoint;
        
        NSLog(@"Origin at (%g,%g)", myRect.origin.x, myRect.origin.y);
        
        [myPoint setX:50 andY:50];
        [myRect translate:myPoint];
        
        NSLog(@"Origin at (%g,%g)", myRect.origin.x, myRect.origin.y);
        NSLog(@"Circle circumference = %g and area = %g", [myCir circumference], [myCir area]);
        NSLog(@"Triangle perimeter = %g and area = %g", myTria.perimeter, myTria.area);
        NSLog(@"Rectangle is isContainsPiont (%g,%g):",myPoint.x,myPoint.y);
        if ([myRect containsPoint:myPoint]) {
            NSLog(@"Yes");
        }
        else
        {
            NSLog(@"NO");
        }
    }
    return 0;
}
