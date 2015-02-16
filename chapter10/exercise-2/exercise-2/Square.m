//
//  Square.m
//  program-3
//
//  Created by moony on 15/1/26.
//  Copyright (c) 2015年 moony. All rights reserved.
//

#import "Square.h"

@implementation Square

-(id) initWithSide:(int)side
{
    self = [super init];
    if (self) {
        [self setSide:side];
    }
    return self;
}

-(void) setSide:(int)s
{
    [self setWidth:s andHeight:s];
}

-(int) side
{
    return self.width;
}

@end
