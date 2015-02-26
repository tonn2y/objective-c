//
//  main.m
//  program-16
//
//  Created by moony on 15/2/25.
//  Copyright (c) 2015年 moony. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableDictionary *glossary = [NSMutableDictionary dictionary];
        
        //存储3个条目在类别中
        [glossary setObject:@"A class defined so other classes can inherit from it" forKey:@"abstract classes"];
        [glossary setObject:@"To implement all the methods defined in a protocol" forKey:@"adopt"];
        [glossary setObject:@"Storing an object for later use" forKey:@"archiving"];
        
        //检索并显示它们
        NSLog(@"abstract classes : %@",[glossary objectForKey:@"abstract classes"]);
        NSLog(@"adopt : %@",[glossary objectForKey:@"adopt"]);
        NSLog(@"archiving : %@",[glossary objectForKey:@"archiving"]);
    }
    return 0;
}
