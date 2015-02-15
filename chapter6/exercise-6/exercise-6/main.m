//
//  main.m
//  exercise-6
//
//  Created by moony on 15/1/24.
//  Copyright (c) 2015年 moony. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int number, right_digit, count = 0, number_reversed = 0;
        char *numberChar;
        NSLog(@"Enter your number.");
        scanf("%i",&number);
        
        if (number < 0) {
            number = - number;
            printf("minus \n");
        }
        
        while (number != 0) {
            right_digit = number % 10;
            number_reversed = number_reversed * 10 + right_digit;
            ++count;
            number /= 10;
        }
        
        do {
            right_digit = number_reversed % 10;
            
            switch (right_digit) {
                case 0:
                    numberChar = "zero";
                    break;
                case 1:
                    numberChar = "one";
                    break;
                case 2:
                    numberChar = "two";
                    break;
                case 3:
                    numberChar = "three";
                    break;
                case 4:
                    numberChar = "four";
                    break;
                case 5:
                    numberChar = "five";
                    break;
                case 6:
                    numberChar = "six";
                    break;
                case 7:
                    numberChar = "seven";
                    break;
                case 8:
                    numberChar = "eight";
                    break;
                case 9:
                    numberChar = "nine";
                    break;
                default:
                    numberChar = "unknow input";
                    break;
            }
            printf("%s \n",*&numberChar);
            number_reversed /= 10;
            --count;
        }
        while (count > 0);
        
    }
    return 0;
}
