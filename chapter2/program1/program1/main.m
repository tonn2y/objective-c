//
//  main.m
//  program1
//
//  Created by tonn2y on 15/1/1.
//  Copyright (c) 2015年 Tonny. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        /* programming list 2-3
        NSLog(@"Programming is fun!");
        NSLog(@"Programming in Objective-C is even more fun !");
        NSLog(@"Testing... \n..1\n...2\n....3");
        */
        
        /* programming list 2-4
        int sum;
        
        sum = 25 +50;
        NSLog(@"The sum of 25 and 50 is %i",sum);
        */
        
        //programming list 2-5
        int value1,value2,sum;
        
        value1 = 50;
        value2 = 25;
        sum = value1 + value2;
        
        NSLog(@"The sum of %i and %i is %i",value1,value2,sum);
        
    }
    return 0;
}
