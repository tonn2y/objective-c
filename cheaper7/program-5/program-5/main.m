//
//  main.m
//  program-5
//
//  Created by moony on 15/1/25.
//  Copyright (c) 2015年 moony. All rights reserved.
//

#import "Fraction.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Fraction *aFraction = [[Fraction alloc] init];
        Fraction *bFraction = [[Fraction alloc] init];
        
        //设置两个分数为1/4 和 1/2，并将它们加到一起
        [aFraction setTo:1 over:4];
        [bFraction setTo:1 over:2];
        
        [aFraction print];
        NSLog(@"+");
        [bFraction print];
        NSLog(@"+");
        
        [aFraction add:bFraction];
        [aFraction reduce];
        [aFraction print];
    }
    return 0;
}
