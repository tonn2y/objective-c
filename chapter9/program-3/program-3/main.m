//
//  main.m
//  program-3
//
//  Created by moony on 15/2/15.
//  Copyright (c) 2015年 moony. All rights reserved.
//

#import "Square.h"

@class Rectangle;

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Square *mySquare = [[Square alloc]init];
        
        //isMemberOf
        if ([mySquare isMemberOfClass:[Square class]] == YES) {
            NSLog(@"mySquare is a member of Square class");
        }
        
        if ([mySquare isMemberOfClass:[Rectangle class]] == YES) {
            NSLog(@"mySquare is a member of Rectangle class");
        }
        
        if ([mySquare isMemberOfClass:[NSObject class]] == YES) {
            NSLog(@"mySquare is a member of NSObject class");
        }
        
        //isKindOf
        if ([mySquare isKindOfClass:[Square class]] == YES) {
            NSLog(@"mySquare is a kind of Square class");
        }
        
        if ([mySquare isKindOfClass:[Rectangle class]] == YES) {
            NSLog(@"mySquare is a kind of Rectangle class");
        }
        
        if ([mySquare isKindOfClass:[NSObject class]] == YES) {
            NSLog(@"mySquare is a kind of NSObject class");
        }
        
        //respondsTo
        if ([mySquare respondsToSelector:@selector(setSide:)] == YES) {
            NSLog(@"mySquare responds to setSide: method");
        }
        
        if ([mySquare respondsToSelector:@selector(setWidth:andHeight:)] == YES) {
            NSLog(@"mySquare responds to setWidth:andHeight: method");
        }
        
        if ([Square respondsToSelector:@selector(alloc)] == YES) {
            NSLog(@"Square class responds to alloc method");
        }
        
        //instancesRespondTo
        if ([Rectangle instancesRespondToSelector:@selector(setSide:)] == YES) {
            NSLog(@"Instance of Rectangle respond to setSide: method");
        }
        
        if ([Square instancesRespondToSelector:@selector(setSide:)] == YES) {
            NSLog(@"Instance of Square respond to setSide: method");
        }
        
        if ([Square isSubclassOfClass:[Rectangle class]] == YES) {
            NSLog(@"Square is a subclass if a rectangle");
        }
    }
    return 0;
}
