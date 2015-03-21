//
//  main.m
//  program-5
//
//  Created by moony on 15/3/21.
//  Copyright (c) 2015年 moony. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *fName = @"path.m";
        NSFileManager *fm;
        NSString *path, *tempdir, *extension, *homedir, *fullpath;
        
        
        NSArray *components;
        
        fm = [NSFileManager defaultManager];
        
        //获取临时的工作目录
        tempdir = NSTemporaryDirectory();
        
        NSLog(@"Temporary Directory is %@", tempdir);
        
        //当前目录中提取基本目录
        path = [fm currentDirectoryPath];
        NSLog(@"Base dir is %@", [path lastPathComponent]);
        
        //创建文件fName在当前目录中的完整路径
        fullpath = [path stringByAppendingPathComponent:fName];
        NSLog(@"fullpath to %@ is %@", fName,fullpath);
        
        //获取文件扩展名
        extension = [fullpath pathExtension];
        NSLog(@"extension for %@ is %@", fullpath, extension);
        
        //获取用户的主目录
        homedir = NSHomeDirectory();
        NSLog(@"Your home directory is %@", homedir);
        
        //拆分路径为各组成部分
        components = [homedir pathComponents];
        
        for (path in components) {
            NSLog(@"%@", path);
        }
    }
    return 0;
}
