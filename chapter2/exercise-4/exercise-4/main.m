//
//  main.m
//  exercise-4
//
//  Created by tonn2y on 15/1/1.
//  Copyright (c) 2015年 Tonny. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        int subtract,value1,value2;
        value1 = 87;
        value2 = 15;
        subtract = value1 - value2;
        NSLog(@"The difference between %i and %i is %i",value1,value2,subtract);
    }
    return 0;
}
