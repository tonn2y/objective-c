//
//  main.m
//  program
//
//  Created by tonn2y on 15/1/4.
//  Copyright (c) 2015年 Tonny. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fraction : NSObject

-(void) print;
-(void) setNumerator:(int) n;
-(void) setDenominator:(int) d;
-(int) numerator;
-(int) denominator;

@end

@implementation Fraction
{
    int numerator;
    int denominator;
}

-(void) print
{
    NSLog(@"%i/%i",numerator,denominator);
}

-(void) setNumerator:(int) n
{
    numerator = n;
}

-(void) setDenominator:(int) d
{
    denominator = d;
}

-(int) numerator
{
    return numerator;
}

-(int) denominator
{
    return denominator;
}

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool{
        //代码清单3-1
        //创建一个分数实例
        //Fraction *myFraction;
        //myFraction = [Fraction alloc];
        //myFraction = [myFraction init];

        Fraction *myFraction = [[Fraction alloc] init];
        
        //设置分数为1/3
        [myFraction setNumerator:1];
        [myFraction setDenominator:3];
        /*
        //打印方法显示分数
        NSLog(@"The value of myFraction is:");
        [myFraction print];
        */
        //使用两个新方法显示分数
        NSLog(@"The value of myFraction is:%i/%i",[myFraction numerator],[myFraction denominator]);
        
        /*代码清单3-3
        Fraction *frac1 = [[Fraction alloc] init];
        Fraction *frac2 = [[Fraction alloc] init];
        
        //设置第一个分数为2/3
        [frac1 setNumerator:2];
        [frac1 setDenominator:3];
        
        //设置第二个分数为3/7
        [frac2 setNumerator:3];
        [frac2 setDenominator:7];
        
        NSLog(@"First fraction is:");
        [frac1 print];
        NSLog(@"Second fraction is:");
        [frac2 print];
        */
    }
    return 0;
}