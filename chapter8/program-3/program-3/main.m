//
//  main.m
//  program-3
//
//  Created by moony on 15/1/26.
//  Copyright (c) 2015年 moony. All rights reserved.
//

#import "Square.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Square *mySquare = [[Square alloc]init];
        
        [mySquare setSide:5];
        
        NSLog(@"Square: s = %i", [mySquare side]);
        NSLog(@"Area = %i, Perimeter = %i",[mySquare area], [mySquare perimeter]);

    }
    return 0;
}
