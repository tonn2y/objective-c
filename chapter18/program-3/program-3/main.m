//
//  main.m
//  program-3
//
//  Created by moony on 15/5/1.
//  Copyright (c) 2015年 moony. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Fraction *f1 = [[Fraction alloc]init];
        Fraction *f2;
        
        [f1 setTo:2 over:3];
        f2 = [f1 copy];
        
        [f2 setTo:1 over:3];
        
        [f1 print];
        [f2 print];
    }
    return 0;
}
