//
//  main.m
//  program-3
//
//  Created by moony on 15/1/25.
//  Copyright (c) 2015年 moony. All rights reserved.
//

#import "Fraction.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Fraction *aFraction = [[Fraction alloc] init];
        
        [aFraction setTo:100 over:200];
        [aFraction print];
        
        [aFraction setTo:1 over:3];
        [aFraction print];
    }
    return 0;
}
