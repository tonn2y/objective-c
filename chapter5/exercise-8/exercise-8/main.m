//
//  main.m
//  exercise-8
//
//  Created by tonn2y on 15/1/7.
//  Copyright (c) 2015年 Tonny. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int number, remainde,add_digit;
        
        NSLog(@"Enter your number.");
        scanf("%i",&number);
        
        while (number != 0) {
            remainde = number % 10;
            add_digit += remainde;
            number /= 10;
        }
        NSLog(@"The total number is %i",add_digit);
    }
    return 0;
}
