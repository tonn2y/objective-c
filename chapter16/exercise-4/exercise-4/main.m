//
//  main.m
//  exercise-4
//
//  Created by moony on 15/3/24.
//  Copyright (c) 2015年 moony. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSProcessInfo *proc = [NSProcessInfo processInfo];
        
        NSLog(@"[proc description]:%@", [proc description]);
        NSLog(@"[proc arguments]:%@", [proc arguments]);
        NSLog(@"[proc environment]:%@", [proc environment]);
        NSLog(@"[proc processIdentifier]:%i", [proc processIdentifier]);
        NSLog(@"[proc globallyUniqueString]:%@", [proc globallyUniqueString]);
        NSLog(@"[proc processName]:%@", [proc processName]);
        NSLog(@"[proc hostname]:%@", [proc hostName]);
        NSLog(@"[proc operatingSystemVersion]:%lu", [proc operatingSystemVersion]);
        NSLog(@"[proc operatingSystemVersionString]:%@", [proc operatingSystemVersionString]);
        NSLog(@"[proc physicalMemory]:%llu", [proc physicalMemory]);
        NSLog(@"[proc processorCount]:%lu", [proc processorCount]);
        NSLog(@"[proc activeProcessorCount]:%lu", [proc activeProcessorCount]);
        NSLog(@"[proc hash]:%u",(unsigned int)[proc hash]);
    }
    return 0;
}
