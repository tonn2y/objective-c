//
//  main.m
//  exercise-5
//
//  Created by moony on 15/2/16.
//  Copyright (c) 2015年 moony. All rights reserved.
//

#import "Fraction.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        typedef Fraction *FractionObj;
        
        FractionObj f1 = [[Fraction alloc]init],
                    f2 = [[Fraction alloc]init];
        
        [f1 setTo:1 over:2];
        [f2 setTo:2 over:5];
        
        [f1 print];
        [f2 print];
    }
    return 0;
}
