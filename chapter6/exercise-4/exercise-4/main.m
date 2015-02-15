//
//  main.m
//  exercise-4
//
//  Created by tonn2y on 15/1/17.
//  Copyright (c) 2015年 Tonny. All rights reserved.
//

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
        double value;
        char operator;
        Calculator *deskCalc = [[Calculator alloc]init];
        
        NSLog(@"Begin Calculations");
        do{
            scanf("%lf %c",&value,&operator);
            switch (operator) {
                case 'S':
                    [deskCalc setAccumulator:value];
                    break;
                case '+':
                    [deskCalc add:value];
                    break;
                case '-':
                    [deskCalc subtract:value];
                    break;
                case '*':
                    [deskCalc multply:value];
                    break;
                case '/':
                    [deskCalc divide:value];
                    break;
                case 'E':
                    NSLog(@"End of program");
                    break;
                default:
                    break;
            }
            NSLog(@"= %lf",[deskCalc accumulator]);
            
        }while (operator != 'E');
    }
    return 0;
}
