//
//  main.m
//  exercise-10
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
-(void) add:(double) value;
-(void) subtract:(double) value;
-(void) multiply:(double) value;
-(void) divide:(double) value;

//存储功能
-(double) memoryClear;
-(double) memoryStore;
-(double) memoryRecall;
-(double) memoryAdd:(double) value;
-(double) memorySubtract:(double) value;

@end

@implementation Calculator
{
    double accumulator;
    double memory;
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

-(void) add:(double)value
{
    accumulator += value;
}

-(void) subtract:(double)value
{
    accumulator -= value;
}

-(void) multiply:(double)value
{
    accumulator *= value;
}

-(void) divide:(double)value
{
    accumulator /= value;
}

-(double) memoryClear
{
    accumulator = memory;
    memory = 0;
    return accumulator;
}

-(double) memoryStore
{
    memory = accumulator;
    return memory;
}

-(double) memoryRecall
{
    accumulator = memory;
    return accumulator;
}

-(double) memoryAdd:(double)value
{
    accumulator = memory += value;
    return accumulator;
}

-(double) memorySubtract:(double)value
{
    accumulator = memory -= value;
    return accumulator;
}

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Calculator *myCalc = [Calculator new];
        
        [myCalc setAccumulator:100.0];
        [myCalc add:200.];
        [myCalc divide:15.0];
        [myCalc subtract:10.0];
        [myCalc multiply:5];
        NSLog(@"The result is %g",[myCalc accumulator]);
    }
    return 0;
}


