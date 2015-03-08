//
//  main.m
//  exercise-8
//
//  Created by moony on 15/3/8.
//  Copyright (c) 2015年 moony. All rights reserved.
//

#import "Fraction+Comparision.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableArray *myFractions = [[NSMutableArray alloc] init];
        Fraction *frac1 = [[Fraction alloc] init];
        Fraction *frac2 = [[Fraction alloc] init];
        Fraction *frac3 = [[Fraction alloc] init];
        
        [frac1 setTo:4 over:2];
        [frac2 setTo:2 over:3];
        [frac3 setTo:7 over:4];
        
        [myFractions addObject:frac1];
        [myFractions addObject:frac2];
        [myFractions addObject:frac3];
        
        
        NSLog(@"%@", myFractions);
        
        [myFractions sortUsingSelector:@selector(comparisionFraction:)];
        
        NSLog(@"%@", myFractions);
        
    }
    return 0;
}
