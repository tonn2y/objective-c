//
//  main.m
//  exercise-5
//
//  Created by moony on 15/1/24.
//  Copyright (c) 2015年 moony. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int number, right_digit;
        bool flag = FALSE;
        
        NSLog(@"Enter your number.");
        scanf("%i",&number);
        
        do {
            if (number<0) {
                flag = TRUE;
                number = -number;
            }
            right_digit = number % 10;
            printf("%i",right_digit);
            number /= 10;
        }
        while (number != 0);
        
        if (flag == TRUE) {
            printf("-");
        }
    }
    return 0;
}
