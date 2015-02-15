//
//  main.m
//  program-4
//
//  Created by moony on 15/2/15.
//  Copyright (c) 2015年 moony. All rights reserved.
//

#import "Fraction.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Fraction *f = [[Fraction alloc]init];
        
        @try {
            [f noSuchMethod];
        }
        @catch (NSException *exception) {
            NSLog(@"Caught %@%@",[exception name],[exception reason]);
        }

        NSLog(@"Excution continues!");
        
    }
    return 0;
}
