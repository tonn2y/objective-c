//
//  main.m
//  program-9
//
//  Created by moony on 15/2/23.
//  Copyright (c) 2015年 moony. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableArray *numbers = [NSMutableArray array];
        int  i;
        //创建0～9数字的数组
        for (i=0; i<10; ++i) {
            numbers[i] = @(i);
        }
        
        //遍历数组与显示其值
        for (i =0; i<10; ++i) {
            NSLog(@"%@", numbers[i]);
        }
        
        //使用带有%@格式的NSLog显示
        NSLog(@"====== Using a single NSLog");
        NSLog(@"%@",numbers);
    }
    return 0;
}
