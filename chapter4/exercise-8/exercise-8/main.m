//
//  main.m
//  exercise-8
//
//  Created by tonn2y on 15/1/6.
//  Copyright (c) 2015年 Tonny. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Calculator : NSObject

//累加方法
-(void) setAccumulator:(double) value;
-(void) clear;
-(double) accumulator;

//算术方法
-(double) add:(double) value;
-(double) subtract:(double) value;
-(double) multiply:(double) value;
-(double) divide:(double) value;

@end

@implementation Calculator
{
    double accumulator;
}

-(void) setAccumulator:(double)value
{
    accumulator = value;
}

-(void) clear
{
    accumulator = 0;
}

-(double) accumulator{
    return accumulator;
}

-(double) add:(double)value
{
    return accumulator += value;
}

-(double) subtract:(double)value
{
    return accumulator -= value;
}

-(double) multiply:(double)value
{
    return accumulator *= value;
}

-(double) divide:(double)value
{
    return accumulator /= value;
}

@end


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Calculator *myCalc = [Calculator new];
        
        [myCalc setAccumulator:100.0];
        NSLog(@"The add by accumulator is %g",[myCalc add:10]);
        NSLog(@"The subtract by accumulator is %g",[myCalc subtract:10]);
        NSLog(@"The multiply by accumulator is %g",[myCalc multiply:5]);
        NSLog(@"The divide by accumulator is %g",[myCalc divide:5]);
    }
    return 0;
}
