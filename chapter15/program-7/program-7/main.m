//
//  main.m
//  program-7
//
//  Created by moony on 15/2/23.
//  Copyright (c) 2015年 moony. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    int  i;
    @autoreleasepool {
        //创建一个数组包含月份的名称
        NSArray *monthNames = [NSArray arrayWithObjects:
                               @"January",@"February",@"March",@"April",@"May",@"June",
                               @"July",@"August",@"September",@"October",@"November",@"December", nil];
        
        //列出数组中所有的元素
        NSLog(@"Month   Name");
        NSLog(@"=====   ====");
        
        for (i=0; i< 12; i++) {
            NSLog(@"   %2i   %@",i + 1,[monthNames objectAtIndex:i]);
        }

    }
    return 0;
}
