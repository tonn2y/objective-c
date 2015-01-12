//
//  main.m
//  program
//
//  Created by tonn2y on 15/1/12.
//  Copyright (c) 2015年 Tonny. All rights reserved.
//

#import <Foundation/Foundation.h>
/* 代码清单 6-2
@interface Fraction : NSObject

-(void) print;
-(void) setNumerator:(int) n;
-(void) setDenominator:(int) d;
-(int) numerator;
-(int) denominator;
-(double) convertToNum;

@end

@implementation Fraction
{
    int numerator;
    int denominator;
}

-(void) print
{
    NSLog(@" %i/%i",numerator,denominator);
}

-(void) setNumerator:(int)n
{
    numerator = n;
}

-(void) setDenominator:(int)d
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

-(double) convertToNum
{
    if (denominator != 0) {
        return (double) numerator / denominator;
    }
    else
    {
        return  NAN;
    }
}

@end
*/
 
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        /* 代码清单 6-1 计算一个整数的绝对值
        int number;
        
        NSLog(@"Type in you number: ");
        scanf("%i",&number);
        
        if(number<0)
            number = - number;
        NSLog(@"The absolute value is %i",number);
         */
        
        /* 代码清单 6-2
        Fraction *aFraction = [[Fraction alloc] init];
        Fraction *bFraction = [[Fraction alloc] init];
        
        [aFraction setNumerator:1];
        [aFraction setDenominator:4];
        
        [aFraction print];
        NSLog(@" =");
        NSLog(@"%g",[aFraction convertToNum]);
        
        [bFraction print];
        NSLog(@" =");
        NSLog(@"%g",[bFraction convertToNum]);
         */
        
        /* 代码清单 6-3 ～ 6-4
        int number_to_test, remainder;
        
        NSLog(@"Enter you number to be tested: ");
        scanf("%i", &number_to_test);
        
        remainder = number_to_test % 2;
        
        if (remainder == 0) {
            NSLog(@"The number is even.");
        } else {
            NSLog(@"The number is odd.");
        }
        */
        
        /* 代码清单 6-5 确定一年是否是闰年
        int year, rem_4, rem_100, rem_400;
        
        NSLog(@"Enter the year to be tested: ");
        scanf("%i", &year);
        
        rem_4 = year % 4;
        rem_100 = year % 100;
        rem_400 = year % 400;
        
        if ((rem_4 == 0 && rem_100 != 0) || rem_400 == 0) {
            NSLog(@"It's a leap year.");
        } else {
            NSLog(@"Nope, it's not a leap year.");
        }
        */
        
        /* 代码清单 6-6 实现正负函数的程序
        int number, sign;
        
        NSLog(@"Please type in a number: ");
        scanf("%i", &number);
        
        if (number < 0) {
            sign = -1;
        } else if(number == 0){
            sign = 0;
        }else{
            sign = 1;
        }
        
        NSLog(@"Sign = %i",sign);
        */
        
        /* 代码清单 6-7 对单个字符进行分类的程序*/
        //从键盘输入
        char c;
        
        NSLog(@"Enter a sign character:");
        scanf("%c", &c);
        
        if ((c >= 'a' && c <= 'z')||(c >= 'A' && c<= 'Z')) {
            NSLog(@"It's an alphabetic character.");
        } else if(c >= '0' && c <= '9') {
            NSLog(@"It's a digit.");
        }else {
            NSLog(@"It's a special character.");
        }
        
    }
    return 0;
}
