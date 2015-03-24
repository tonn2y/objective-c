//
//  NSString+TempFiles.m
//  exercise-5
//
//  Created by moony on 15/3/24.
//  Copyright (c) 2015年 moony. All rights reserved.
//


#import "NSString+TempFiles.h"

@implementation NSString(TempFiles)

+(NSString *) temporaryFileName
{
    NSString *tempDir = [NSString stringWithString:NSTemporaryDirectory()];
    NSString *tempName = [NSString stringWithString:[[NSProcessInfo processInfo]globallyUniqueString]];
    
    return [NSString stringWithString:[tempDir stringByAppendingString:tempName]];
}

@end