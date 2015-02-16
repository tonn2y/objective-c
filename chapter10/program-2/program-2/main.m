//
//  main.m
//  program-2
//
//  Created by moony on 15/2/16.
//  Copyright (c) 2015年 moony. All rights reserved.
//

#import "Foo.h"
int gGlobalVar = 5;
#import "Fraction.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        Foo *myFoo = [[Foo alloc]init];
//        
//        NSLog(@"%i ",gGlobalVar);
//        
//        [myFoo setgGlobalVar:100];
//        NSLog(@"%i ",gGlobalVar);
        
        Fraction *a, *b, *c;
        
        NSLog(@"Fractions allocted: %i", [Fraction count]);
        
        a = [[Fraction allocF]init];
        b = [[Fraction allocF]init];
        c = [[Fraction allocF]init];
        
        NSLog(@"Frcations allocated: %i", [Fraction count]);
    }
    return 0;
}
