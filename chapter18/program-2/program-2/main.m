//
//  main.m
//  program-2
//
//  Created by moony on 15/5/1.
//  Copyright (c) 2015年 moony. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableArray *dataArray = [NSMutableArray arrayWithObjects:
                                     [NSMutableString stringWithString:@"one"],
                                     [NSMutableString stringWithString:@"two"],
                                     [NSMutableString stringWithString:@"three"],
                                     nil
                                     ];
        NSMutableArray *dataArray2;
        NSMutableString *mStr;
        
        NSLog(@"dataArray: ");
        for (NSString *elem in dataArray) {
            NSLog(@"    %@",elem);
        }
        
        //复制一个副本，然后替换第一个字符串
        dataArray2 = [dataArray mutableCopy];
        
        mStr = dataArray[0];
        [mStr appendString:@"ONE"];
        NSLog(@"dataArray: ");
        for (NSString *elem in dataArray) {
            NSLog(@"    %@",elem);
        }
        
        NSLog(@"dataArray2: ");
        
        for (NSString *elem in dataArray2) {
            NSLog(@"    %@",elem);
        }
    }
    return 0;
}
