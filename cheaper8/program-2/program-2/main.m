//
//  main.m
//  program-2
//
//  Created by moony on 15/1/26.
//  Copyright (c) 2015年 moony. All rights reserved.
//

#import "Rectangle.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Rectangle *myRect = [[Rectangle alloc]init];
        
        [myRect setWidth:5 andHeight:8];
        
        NSLog(@"Rectangle: w = %i, h = %i",myRect.width, myRect.height);
        NSLog(@"Area = %i, Perimeter = %i",[myRect area], [myRect perimeter]);
    }
    return 0;
}
