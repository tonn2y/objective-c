//
//  main.m
//  exercise-6
//
//  Created by tonn2y on 15/1/7.
//  Copyright (c) 2015年 Tonny. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        /* 代码清单5-2 计算第200个三角数的程序 while形式
        int n , triangularNumber;
         
        triangularNumber = 0;
        n =1;
        while (n<=200) {
            triangularNumber += n;
            n++;
        }
         
        NSLog(@"The 200th triangular number is %i",triangularNumber);
         */
        
        /* 代码清单5-3 生成三角数表的程序
        int n, triangularNumber;
        
        NSLog(@"TABLE OF TRIANGULAR NUMBERS");
        NSLog(@" n Sum from 1 to n");
        NSLog(@"-- --------");
        
        triangularNumber = 0;
        n = 1;
        while (n<=10) {
            triangularNumber += n;
            n++;
            NSLog(@"%2i      %i",n,triangularNumber);
        }
        */
        
        /* 代码清单5-4 键盘输入计算三角数
        int n,number, triangularNumber;
         
        NSLog(@"What triangular number do you want?");
        scanf("%i",&number);
         
        triangularNumber = 0;
        while (n <= number) {
            triangularNumber +=n;
            n++;
        }
         
        NSLog(@"Triangular number %i is %i \n",number,triangularNumber);
        */
        
        /* 代码清单5-5 嵌套的for循环*/
        int n=1, number, triangularNumber, counter=1;
        
        while (counter <= 5) {
            NSLog(@"What triangular number do you want?");
            scanf("%i",&number);
            
            triangularNumber = 0;
            while (n <= number) {
                triangularNumber += n;
                n++;
            }
            counter++;
            NSLog(@"Triangular number %i is %i \n",number,triangularNumber);
        }
    }
    return 0;
}
