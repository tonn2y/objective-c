//
//  main.m
//  program-1
//
//  Created by moony on 15/2/15.
//  Copyright (c) 2015年 moony. All rights reserved.
//

#import "Complex.h"
#import "Fraction.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        
        Fraction *f1 = [[Fraction alloc]init];
        Fraction *f2 = [[Fraction alloc]init];
        Fraction *fracResult;
        
        Complex *c1 = [[Complex alloc]init];
        Complex *c2 = [[Complex alloc]init];
        Complex *compResult;
        
        [f1 setTo:1 over:10];
        [f2 setTo:2 over:15];
        
        [c1 setReal:18.0 andImaginary:2.5];
        [c2 setReal:-5.0 andImaginary:3.2];
        
        [c1 print]; NSLog(@"         +"); [c2 print];
        NSLog(@"----------");
        compResult = [c1 add:c2];
        [compResult print];
        NSLog(@"\n");
        
        [f1 print]; NSLog(@"   +"); [f2 print];
        NSLog(@"----");
        fracResult = [f1 add:f2];
        [fracResult print];
    }
    return 0;
}
