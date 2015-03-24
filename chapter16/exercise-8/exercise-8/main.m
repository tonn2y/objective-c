//
//  main.m
//  exercise-8
//
//  Created by moony on 15/3/24.
//  Copyright (c) 2015年 moony. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSURL *myURL = [NSURL URLWithString:@"http://bit.ly/aycNwd"];
        NSDictionary *dic = [NSDictionary dictionaryWithContentsOfURL:myURL];
        NSLog(@"%@", dic);
    }
    return 0;
}
