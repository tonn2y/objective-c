//
//  main.m
//  program
//
//  Created by tonn2y on 15/1/7.
//  Copyright (c) 2015年 Tonny. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        /* 代码清单5-1
        //计算第8个三角形数的程序
        int triangularNumber;
        
        triangularNumber = 1 + 2 + 3 + 4 + 5 + 6 + 7 + 8;
        NSLog(@"The eight triangular number is %i",triangularNumber);
        */
        
        /* 代码清单5-2 计算第200个三角数的程序
        int n , triangularNumber;
        
        triangularNumber = 0;
        
        for (n = 1; n <= 200; n = n + 1) {
            triangularNumber += n;
        }
        
        NSLog(@"The 200th triangular number is %i",triangularNumber);
        */
        
        /* 代码清单5-3 生成三角数表的程序
        int n, triangularNumber;
        
        NSLog(@"TABLE OF TRIANGULAR NUMBERS");
        NSLog(@" n Sum from 1 to n");
        NSLog(@"-- --------");
        
        triangularNumber = 0;
        for (n =1; n <= 10; ++n) {
            triangularNumber += n;
            NSLog(@"%2i      %i",n,triangularNumber);
        }
        */
        
        /* 代码清单5-4 键盘输入计算三角数
        int n,number, triangularNumber;
        
        NSLog(@"What triangular number do you want?");
        scanf("%i",&number);
        
        triangularNumber = 0;
        
        for (n= 1; n <= number; ++n)
            triangularNumber += n;
            
        NSLog(@"Triangular number %i is %i \n",number,triangularNumber);
        */
        
        /* 代码清单5-5 嵌套的for循环
        int n, number, triangularNumber, counter;
        
        for (counter = 1; counter <= 5; counter++) {
            NSLog(@"What triangular number do you want?");
            scanf("%i",&number);
            
            triangularNumber = 0;
            
            for (n = 1; n <= number; ++n) {
                triangularNumber += n;
            }
            NSLog(@"Triangular number %i is %i \n",number,triangularNumber);
        }
        */
        
        /* 代码清单5-6 使用while语句
        int count = 1;
        
        while (count <= 5) {
            NSLog(@"%i",count);
            ++count;
        }
        */
        
        /* 代码清单5-7 找出两个非负整数的最大公约数
        unsigned int u, v, temp;
        
        NSLog(@"Please type in two nonnegative integers.");
        scanf("%u%u", &u, &v);
        
        while (v != 0) {
            temp = u % v;
            u = v;
            v = temp;
        }
        NSLog(@"Their greatest common divisor is %u",u);
        */
        
        /* 代码清单5-8 颠倒显示数字的位数
        int number, right_digit;
        
        NSLog(@"Enter your number.");
        scanf("%i",&number);
        
        while (number != 0) {
            right_digit = number % 10;
            printf("%i",right_digit);
            number /= 10;
        }
        */
        
        /* 代码清单5-9 使用do语句颠倒显示数字的位数 */
        int number, right_digit;
        
        NSLog(@"Enter your number.");
        scanf("%i",&number);
        
        do {
            right_digit = number % 10;
            printf("%i",right_digit);
            number /= 10;
        }
        while (number != 0);
    }
    return 0;
}
