//
//  main.m
//  exercise-6
//
//  Created by tonn2y on 15/1/6.
//  Copyright (c) 2015年 Tonny. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Complex : NSObject

-(void) setReal:(double) a;
-(void) setImaginary:(double) b;
-(void) print;
-(double) real;
-(double) imaginary;

@end

@implementation Complex
{
    double real;
    double imaginary;
}

-(void) setReal:(double)a
{
    real = a;
}

-(void) setImaginary:(double)b
{
    imaginary = b;
}

-(void) print
{
    NSLog(@"%g + %gi",real,imaginary);
}

-(double) real
{
    return real;
}

-(double) imaginary
{
    return imaginary;
}

@end


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Complex *complex = [Complex new];
        
        [complex setReal:2.3];
        [complex setImaginary:4];
        [complex print];
        NSLog(@"%g + %gi",[complex real],[complex imaginary]);
    }
    return 0;
}
