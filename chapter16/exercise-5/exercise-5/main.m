//
//  main.m
//  exercise-5
//
//  Created by moony on 15/3/24.
//  Copyright (c) 2015年 moony. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+TempFiles.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"%@", [NSString temporaryFileName]);
    }
    return 0;
}
