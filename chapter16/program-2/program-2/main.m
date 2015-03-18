//
//  main.m
//  program-2
//
//  Created by moony on 15/3/14.
//  Copyright (c) 2015年 moony. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSFileManager *fm;
        NSData *fileData;
        
        fm = [NSFileManager defaultManager];
        
        //读取文件newfile2
        fileData = [fm contentsAtPath:@"newfile2"];
        
        if (fileData == nil) {
            NSLog(@"File read failed!");
            return 1;
        }
        
        //将数据写入newfile3
        if ([fm createFileAtPath:@"newfile3" contents:fileData attributes:nil] == NO) {
            NSLog(@"Couldn't create the copy!");
            return 2;
        }
        
        NSLog(@"File copy was successful!");
    }
    return 0;
}
