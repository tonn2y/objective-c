//
//  main.m
//  program-7
//
//  Created by moony on 15/1/27.
//  Copyright (c) 2015年 moony. All rights reserved.
//

#import <Foundation/Foundation.h>

//ClassA的声明和定义
@interface ClassA : NSObject
{
    int x;
}

-(void) initVar;
-(void) printVar;

@end

@implementation ClassA

-(void) initVar
{
    x = 100;
}
-(void) printVar
{
    NSLog(@"x = %i",x);
}

@end

//ClassB的声明和定义
@interface ClassB : ClassA

-(void) initVar;
-(void) printVar;

@end

@implementation ClassB

-(void) initVar
{
    x = 200;
}

-(void) printVar
{
    NSLog(@"x = %i",x);
}

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        ClassA *a = [[ClassA alloc]init];
        ClassB *b = [[ClassB alloc]init];
        
        [a initVar];
        [a printVar];
        
        [b initVar];
        [b printVar];
    }
    return 0;
}
