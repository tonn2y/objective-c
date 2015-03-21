//
//  main.m
//  program-8
//
//  Created by moony on 15/3/21.
//  Copyright (c) 2015年 moony. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //追加文件fileA到fileB的末尾
        NSFileHandle *inFile, *outFile;
        NSData *buffer;
        
        [[NSFileManager defaultManager] createFileAtPath:@"fileA" contents:@"This is line 1 in the first file.\nThis is line 2 in the first file." attributes:nil];
        [[NSFileManager defaultManager] createFileAtPath:@"fileB" contents:@"Contents of fileB.\nThis is line 1 in the second file.\nThis is line 2 in the second file.\n" attributes:nil];
        //打开文件 fileA 进行读取
        inFile = [NSFileHandle fileHandleForReadingAtPath:@"fileA"];
        
        if (inFile == nil) {
            NSLog(@"Open of fileA for reading failed");
            return 1;
        }
        
        //打开文件fileB进行更新
        outFile = [NSFileHandle fileHandleForUpdatingAtPath:@"fileB"];
        
        if (outFile == nil) {
            NSLog(@"Open of fileB for writing failed");
            return 2;
        }
        
        //在outFile的末尾进行查找
        [outFile seekToEndOfFile];
        
        //从inFile中读取数据，将它写到outFile
        buffer = [inFile readDataToEndOfFile];
        [outFile writeData:buffer];
        
        //关闭两个文件
        [inFile closeFile];
        [outFile closeFile];
        
        //验证它的内容
        NSLog(@"%@", [NSString stringWithContentsOfFile:@"fileB" encoding:NSUTF8StringEncoding error:nil]);
        
    }
    return 0;
}
