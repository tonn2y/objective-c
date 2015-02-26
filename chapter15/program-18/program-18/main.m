//
//  main.m
//  program-18
//
//  Created by moony on 15/2/26.
//  Copyright (c) 2015年 moony. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSDictionary *glossary = [NSDictionary dictionaryWithObjectsAndKeys:@"A class defined so other classes can inherit from it",@"abstract class",@"To implement all the methods defined in a protocol",@"adopt",@"Storing an object for later use",@"archving", nil];
        
        for (NSString *key in glossary) {
            NSLog(@"%@: %@",key, [glossary objectForKey:key]);
        }
        
    }
    return 0;
}

