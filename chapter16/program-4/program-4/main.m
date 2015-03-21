//
//  main.m
//  program-4
//
//  Created by moony on 15/3/20.
//  Copyright (c) 2015年 moony. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *path;
        NSFileManager *fm;
        NSDirectoryEnumerator *dirEnum;
        NSArray *dirArray;
        
        //需要创建文件管理器的实例
        fm = [NSFileManager defaultManager];
        //获取当前工作目录的路径
        path = [fm currentDirectoryPath];
        //枚举目录
        dirEnum = [fm enumeratorAtPath:path];
        
        NSLog(@"Contents of %@", path);
        
        while ((path = [dirEnum nextObject]) != nil) {
            NSLog(@"%@", path);
        }
        
        //另一种枚举目录的方法
        dirArray = [fm contentsOfDirectoryAtPath:[fm currentDirectoryPath] error:nil];
        
        NSLog(@"Contents using contentsOfDirectoryAtPath:error:");
        
        for (path in dirArray){
            NSLog(@"%@", path);
        }
    }
    return 0;
}
