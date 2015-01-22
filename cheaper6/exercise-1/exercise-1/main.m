//
//  main.m
//  exercise-1
//
//  Created by tonn2y on 15/1/17.
//  Copyright (c) 2015年 Tonny. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int firstNumber, secondNumber;
        
        NSLog(@"Enter the first number: ");
        scanf("%i",&firstNumber);
        
        NSLog(@"Enter the second number: ");
        scanf("%i",&secondNumber);
        
        if (firstNumber % secondNumber == 0) {
            NSLog(@"the first number can be divisiable second number");
        }
        else
        {
            NSLog(@"the first number can't divisiable second number");
        }
    }
    return 0;
}
