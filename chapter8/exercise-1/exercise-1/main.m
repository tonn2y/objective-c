//
//  main.m
//  exercise-1
//
//  Created by moony on 15/1/27.
//  Copyright (c) 2015年 moony. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface ClassA : NSObject
{
    int x;
}

-(void) initVar;

@end

@implementation ClassA

-(void) initVar
{
    x = 100;
}

@end

@interface ClassB : ClassA
-(void) printVar;
@end

@implementation ClassB

-(void) printVar
{
    NSLog(@"x = %i",x);
}

@end

@interface ClassC : ClassB

-(void) initVar;

@end

@implementation ClassC

-(void) initVar
{
    x = 300;
}

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        ClassA *a = [[ClassA alloc]init];
        [a initVar];
        ClassB *b = [[ClassB alloc]init];
        [b initVar];
        ClassC *c = [[ClassC alloc]init];
        [c initVar];
    }
    return 0;
}
