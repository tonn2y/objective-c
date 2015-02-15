//
//  main.m
//  exercise-9
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
-(double) changeSign; //改变累加器的正负号
-(double) reciprocal; //累加器的倒数
-(double) xSquared;   //累加器的平方

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

-(double) changeSign
{
    return -accumulator;
}

-(double) reciprocal
{
    return accumulator = 1/accumulator;
}

-(double) xSquared
{
    return accumulator*=accumulator;
}

@end


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Calculator *myCalc = [Calculator new];
        
        [myCalc setAccumulator:100.0];
        NSLog(@"change accumulator sign is %g",[myCalc changeSign]);
        NSLog(@"reciprocal accumulator is %g",[myCalc reciprocal]);
        NSLog(@"squared of accumulator is %g",[myCalc xSquared]);
    }
    return 0;
}

