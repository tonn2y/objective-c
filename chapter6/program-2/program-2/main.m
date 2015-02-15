//
//  main.m
//  program-2
//
//  Created by tonn2y on 15/1/12.
//  Copyright (c) 2015年 Tonny. All rights reserved.
//

#import <Foundation/Foundation.h>

#import <Foundation/Foundation.h>

@interface Calculator : NSObject

//累加器方法
-(void) setAccumulator:(double) value;
-(void) clear;
-(double) accumulator;

//算术方法
-(void) add:(double) value;
-(void) subtract:(double) value;
-(void) multply:(double) value;
-(void) divide:(double) value;

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

-(double) accumulator
{
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

-(void) multply:(double)value
{
    accumulator *= value;
}

-(void) divide:(double)value
{
    if ( value != 0.0) {
        accumulator /= value;
    } else {
        NSLog(@"Division by zero.");
        accumulator = NAN;
    }
}

@end


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        /* 代码清单 6-9 评估简单表达式的值 使用switch */
        double      value1, value2;
        char        operator;
        Calculator  *deskCalc = [[Calculator alloc] init];
        
        NSLog(@"Type in your expression.");
        scanf("%lf %c %lf",&value1, &operator, &value2);
        
        [deskCalc setAccumulator:value1];
        
        switch (operator) {
            case '+':
                [deskCalc add:value2];
                break;
            case '-':
                [deskCalc subtract:value2];
                break;
            case '*':
                [deskCalc multply:value2];
                break;
            case '/':
                [deskCalc divide:value2];
                break;
            default:
                NSLog(@"Unknow operation.");
                break;
        }
        
        NSLog(@"%.2f", [deskCalc accumulator]);
    }
    return 0;
}
