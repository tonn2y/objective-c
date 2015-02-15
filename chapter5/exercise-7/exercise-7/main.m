//
//  main.m
//  exercise-7
//
//  Created by tonn2y on 15/1/7.
//  Copyright (c) 2015年 Tonny. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int number, right_digit;
        
        NSLog(@"Enter your number.");
        scanf("%i",&number);
        
        while (number != 0) {
            right_digit = number % 10;
            printf("%i",right_digit);
            number /= 10;
        }
    }
    return 0;
}
