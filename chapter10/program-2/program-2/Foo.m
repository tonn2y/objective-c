//
//  Foo.m
//  program-2
//
//  Created by moony on 15/2/16.
//  Copyright (c) 2015年 moony. All rights reserved.
//

#import "Foo.h"

@implementation Foo

-(void) setgGlobalVar:(int)val
{
    extern int gGlobalVar;
    gGlobalVar = val;
}

@end
