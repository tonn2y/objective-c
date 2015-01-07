//
//  main.m
//  exercise-5
//
//  Created by tonn2y on 15/1/7.
//  Copyright (c) 2015年 Tonny. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int n, number, triangularNumber, counter, totalCounter;
        NSLog(@"What the counter of calucator do you want?");
        scanf("%i",&totalCounter);
        for (counter = 1; counter <= totalCounter; counter++) {
            NSLog(@"What triangular number do you want?");
            scanf("%i",&number);
            
            triangularNumber = 0;
            
            for (n = 1; n <= number; ++n) {
                triangularNumber += n;
            }
            NSLog(@"Triangular number %i is %i \n",number,triangularNumber);
        }    }
    return 0;
}
