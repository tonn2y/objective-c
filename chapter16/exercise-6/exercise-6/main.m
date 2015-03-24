//
//  main.m
//  exercise-6
//
//  Created by moony on 15/3/24.
//  Copyright (c) 2015年 moony. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSFileHandle *inFile, *outFile;
        NSData  *buffer;
        NSProcessInfo *proc = [NSProcessInfo processInfo];
        NSArray *args = [proc arguments];
        unsigned long long kBuffSize = 0;
        
        if ([args count] == 2) {
            kBuffSize = [[args objectAtIndex:1] integerValue];
        }
        
        //打开文件testfile并读取
        inFile = [NSFileHandle fileHandleForReadingAtPath:@"testfile"];
        
        if (inFile == nil) {
            NSLog(@"Open of testfile for reading failed");
            return 1;
        }
        
        //如果需要，首先创建输出文件
        [[NSFileManager defaultManager] createFileAtPath:@"testout" contents:nil attributes:nil];
        
        //打开outfile文件进行写入
        outFile = [NSFileHandle fileHandleForWritingAtPath:@"testout"];
        
        if (outFile == nil) {
            NSLog(@"Open of testout for writing failed");
            return 2;
        }
        
        //因为它可能包含数据，截断输出文件
        [outFile truncateFileAtOffset:0];
        
        //从inFile中读取数据，将它写到outFile
        buffer = [inFile readDataOfLength:(NSUInteger)kBuffSize];
        
        [outFile writeData:buffer];
        
        //关闭这两个文件的内容
        [inFile closeFile];
        [outFile closeFile];
        
        //验证文件的内容
        NSLog(@"%@", [NSString stringWithContentsOfFile:@"testout" encoding:NSUTF8StringEncoding error:nil]);

    }
    return 0;
}
