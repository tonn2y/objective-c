//
//  main.m
//  program-8
//
//  Created by moony on 15/2/23.
//  Copyright (c) 2015年 moony. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    int i;
    @autoreleasepool {
        NSArray *monthNames = @[@"January",@"February",@"March",@"April",@"May",@"June",
                                @"July",@"August",@"September",@"October",@"November",@"December"];
        //列出数组中的所有元素
        NSLog(@"Month   Name");
        NSLog(@"=====   ====");
        
        for (i=0; i<12; i++) {
            NSLog(@"   %2i   %@",i+1,monthNames[i]);
        }
    }
    return 0;
}
