//
//  main.m
//  exercise-2
//
//  Created by moony on 15/3/24.
//  Copyright (c) 2015年 moony. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSFileManager *fm;
        NSString *directory, *search;
        BOOL isDir;
        BOOL isAnyFound = NO;
        NSProcessInfo *proc = [ NSProcessInfo processInfo];
        NSArray *args = [proc arguments];
        NSString *path;
        NSDirectoryEnumerator *dirEnum;
        
        fm = [NSFileManager defaultManager];
        //判断当前的入参是否符合
        if ([args count] != 3) {
            NSLog(@" Usage : %@ src search", [proc processName]);
            return 1;
        }
        
        directory = args[1];
        path = [NSString stringWithString:directory];
        search = args[2];
        dirEnum = [fm enumeratorAtPath:directory];
        
        if ([fm fileExistsAtPath:directory isDirectory:&isDir]) {
            if (isDir == NO) {
                NSLog(@"First argument isn't directory");
                isAnyFound = YES;
            }
        }
        
        if (isAnyFound == NO) {
            NSLog(@"Don't found any.");
        }
    }
    return 0;
}
