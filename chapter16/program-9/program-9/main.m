//
//  main.m
//  program-9
//
//  Created by moony on 15/3/24.
//  Copyright (c) 2015年 moony. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSURL *myURL = [NSURL URLWithString:@"http://classroomM.com"];
        
        NSString *myHomePage = [NSString stringWithContentsOfURL:myURL encoding:NSUTF8StringEncoding error:nil];
        
        NSLog(@"%@", myHomePage);
    }
    return 0;
}
