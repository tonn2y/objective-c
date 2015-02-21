//
//  main.m
//  exercise-5
//
//  Created by moony on 15/2/21.
//  Copyright (c) 2015年 moony. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Square.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Square *mySquare = [[Square alloc] initWithSide:5];
        
        NSLog(@"S = %i", mySquare.side);
        NSLog(@"Area = %i", [mySquare area]);
        NSLog(@"Perimetr = %i", [mySquare perimeter]);
    }
    return 0;
}
