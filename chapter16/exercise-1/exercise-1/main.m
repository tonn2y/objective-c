//
//  main.m
//  exercise-1
//
//  Created by moony on 15/3/24.
//  Copyright (c) 2015年 moony. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //实现基本的复制工具
        NSFileManager *fm;
        NSString *source, *dest;
        BOOL isDir;
        NSProcessInfo *proc = [NSProcessInfo processInfo];
        NSArray *args = [proc arguments];
        
        fm = [NSFileManager defaultManager];
        
        //检查命令行中的必须大于等于3个参数
        if ([args count] < 3) {
            NSLog(@"Usage: %@ src dest", [proc processName]);
            return 1;
        }
        
        for (int i =1; i< [args count]; i++) {
            source = args[i];
            dest = args[[args count]-1];
            
            //确定能够读取源文件
            if ([fm isReadableFileAtPath:source] == NO) {
                NSLog(@"Cann't read %@", source);
                return 2;
            }
            
            //目标文件是否是一个目录
            //若失，添加源到目标的结尾
            if ([fm fileExistsAtPath:dest isDirectory:&isDir]) {
                if (isDir == YES) {
                    dest = [dest stringByAppendingPathComponent:[source lastPathComponent]];
                }else
                {
                    NSLog(@"Last argument isn't directory");
                    return 4;
                }
            }
            
            //若目标文件已存在，则删除文件
            [fm removeItemAtPath:dest error:nil];
            
            //执行复制
            if ([fm copyItemAtPath:source toPath:dest error:nil] == NO) {
                NSLog(@"Copy failed!");
                return 3;
            }
            
            NSLog(@"Copy of %@ to %@ succeded!", source ,dest);
        }
    }
    return 0;
}
