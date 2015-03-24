//
//  main.m
//  exercise-3
//
//  Created by moony on 15/3/24.
//  Copyright (c) 2015年 moony. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSProcessInfo *proc = [ NSProcessInfo processInfo];
        NSArray *args = [proc arguments];
        
        if ([args count] == 2) {
            NSLog(@"%@", [[args objectAtIndex:1]stringByDeletingLastPathComponent]);
        }
    }
    return 0;
}
