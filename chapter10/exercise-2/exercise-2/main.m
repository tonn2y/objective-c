//
//  main.m
//  exercise-2
//
//  Created by moony on 15/2/16.
//  Copyright (c) 2015年 moony. All rights reserved.
//

#import "Rectangle.h"
#import "Square.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Rectangle *myRectangle = [[Rectangle alloc]initWithWidth:10 andHeight:20];
        Square *mySquare = [[Square alloc]initWithSide:10];
        
        NSLog(@"Width=%i, Height=%i",[myRectangle width],[myRectangle height]);
        NSLog(@"Width=%i, Height=%i",[mySquare width],[mySquare height]);
    }
    return 0;
}
