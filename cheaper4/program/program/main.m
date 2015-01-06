//
//  main.m
//  program
//
//  Created by tonn2y on 15/1/6.
//  Copyright (c) 2015年 Tonny. All rights reserved.
//

#import <Foundation/Foundation.h>

/* 代码清单 4-6 实现Calculator类 */
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

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        /* 代码清单 4-1
        int integerVar = 100;
        float floatingVar = 331.79;
        double doubleVar = 8.44e+11;
        char charVar = 'W';
        
        NSLog(@"integerVar = %i",integerVar);
        NSLog(@"floatingVar = %f",floatingVar);
        NSLog(@"doubleVar = %e",doubleVar);
        NSLog(@"doubleVar = %g",doubleVar);
        NSLog(@"charVar = %c",charVar);
        */
        
        /* 代码清单 4-2
        int a = 100;
        int b = 2;
        int c = 25;
        int d = 4;
        int result;
        
        //减法
        result = a - b;
        NSLog(@"a - b = %i",result);
        
        //乘法
        result = b * c;
        NSLog(@"b * c = %i",result);
        
        //除法
        result = a / c;
        NSLog(@"a / c = %i",result);
        
        //优先级
        result = a + b * c;
        NSLog(@"a + b * c = %i",result);
        
        NSLog(@"a * b + c * d = %i",a * b + c * d);
         
        */
        
        /* 代码清单 4-3 整数运算和一元负号运算符
        int     a = 25;
        int     b = 2;
        float   c = 25.0;
        float   d = 2.0;
        
        NSLog(@"6 + a / 5 * b = %i",6 + a / 5 * b);
        NSLog(@"a / b * b = %i",a / b * b);
        NSLog(@"c / d * d = %f",c / d * d);
        NSLog(@"- a = %i",-a);
        */
        
        /* 代码清单 4-4 模运算符
        int a = 25, b = 5, c = 10, d = 7;
        
        NSLog(@"a %% b = %i",a % b);
        NSLog(@"b %% c = %i",b % c);
        NSLog(@"a %% d = %i",a % d);
        NSLog(@"a / d * d + a %% d = %i",a / d * d + a % d);
        */
        
        /* 代码清单 4-5 整型值和浮点值的相互转换
        float f1 = 123.125, f2;
        int   i1, i2 = -150;
        
        i1 = f1; //浮点数到整数的转换
        NSLog(@"%f assigned to an int produces %i",f1,i1);
        
        f1 = i2; //整数到浮点数的转换
        NSLog(@"%i assigned to a float produces %f",i2,f1);
        
        f2 = i2 / 100; //整数除以整数
        NSLog(@"%i divided by 100 produces %f",i2,f2);
        
        f2 = i2 / 100.0; //整数除以浮点数
        NSLog(@"%i divided by 100.0 produces %f",i2,f2);
        
        f2 = (float)i2 / 100; //类型强制转换运算符
        NSLog(@"(float) %i divided by 100 produces %f",i2,f2);
        */
        
        /* 清单4-6*/
        Calculator *deskCalc = [Calculator new];
        
        [deskCalc setAccumulator:100.0];
        [deskCalc add:200.];
        [deskCalc divide:15.0];
        [deskCalc subtract:10.0];
        [deskCalc multiply:5];
        NSLog(@"The result is %g",[deskCalc accumulator]);
        
    }
    return 0;
}
