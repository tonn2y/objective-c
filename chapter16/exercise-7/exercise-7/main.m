//
//  main.m
//  exercise-7
//
//  Created by moony on 15/3/24.
//  Copyright (c) 2015年 moony. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSFileHandle *fh, *fhout;
        NSData *buff;
        
        fh = [NSFileHandle fileHandleForReadingAtPath:@"testfile.txt"];
        
        if (fh == nil) {
            NSLog(@"testfile.txt isn't found.");
            return 1;
        }
        
        buff = [fh readDataOfLength:128];
        [fh closeFile];
        fhout = [NSFileHandle fileHandleWithStandardOutput];
        
        [fhout writeData:buff];
        [fhout closeFile];
        
    }
    return 0;
}
