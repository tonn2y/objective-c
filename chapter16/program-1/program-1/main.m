//
//  main.m
//  program-1
//
//  Created by moony on 15/3/13.
//  Copyright (c) 2015年 moony. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //基本的文件操作
        //假定存在一个名为“testfile”的文件
        //在当前目录
        
        NSString *fName = @"testfile";
        NSFileManager *fm;
        NSDictionary *atrr;
        
        //需要创建文件管理器的实例
        fm = [NSFileManager defaultManager];
        
        [fm createFileAtPath:@"testfile" contents:@"This is test file,to used test NSFileManager." attributes:nil];
        
        //首先确认测试文件存在
        if ([fm fileExistsAtPath:fName] == NO) {
            NSLog(@"File doesn't exist!");
            return 1;
        }
        
        //创建一个副本
        if ([fm copyItemAtPath:fName toPath:@"newFile" error:nil] == NO) {
            NSLog(@"File Copy failed!");
            return 2;
        }
        
        //测试两个文件是否一致
        if ([fm contentsEqualAtPath:fName andPath:@"newFile"] == NO) {
            NSLog(@"Files are Not Equal");
            return 3;
        }
        
        //重命名副本
        if ([fm moveItemAtPath:@"newFile" toPath:@"newFile2" error:nil] == NO) {
            NSLog(@"File rename Failed");
            return 4;
        }
        
        //获取newfile2的大小
        if ((atrr = [fm attributesOfItemAtPath:@"newFile2" error:nil])== nil) {
            NSLog(@"Couldn't get file attribute!");
            return 5;
        }
        
        NSLog(@"File size is %llu bytes",[[atrr objectForKey:NSFileSize] unsignedLongLongValue]);
        
        //最后删除原始文件
        if ([fm removeItemAtPath:fName error:nil] == NO) {
            NSLog(@"file removeal failed");
            return 6;
        }
        
        NSLog(@"All operations were successful");
        
        //显示新创建的文件内容
        NSLog(@"%@", [NSString stringWithContentsOfFile:@"newFile2" encoding:NSUTF8StringEncoding error:nil]);
    }
    return 0;
}
