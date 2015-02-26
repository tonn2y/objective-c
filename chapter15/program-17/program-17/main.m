//
//  main.m
//  program-17
//
//  Created by moony on 15/2/26.
//  Copyright (c) 2015年 moony. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableDictionary *glossary = [NSMutableDictionary dictionary];
        
        //存储3个条目在类别中
        glossary[@"abstract classes"] = @"A class defined so other classes can inherit from it";
        glossary[@"adopt"] = @"To implement all the methods defined in a protocol";
        glossary[@"archiving"] = @"Storing an object for later use";
        
        //检索并显示它们
        NSLog(@"abstract classes : %@",glossary[@"abstract classes"]);
        NSLog(@"adopt : %@",glossary[@"adopt"]);
        NSLog(@"archiving : %@",glossary[@"archiving"]);
    }
    return 0;
}
