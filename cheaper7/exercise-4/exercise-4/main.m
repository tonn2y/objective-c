//
//  main.m
//  exercise-4
//
//  Created by moony on 15/1/25.
//  Copyright (c) 2015年 moony. All rights reserved.
//

#import "Fraction.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Fraction *aFraction = [[Fraction alloc]init];
        
        [aFraction setTo:5 over:3];
        NSLog(@"Set fraction:5/3");
        [aFraction print];
    }
    return 0;
}
