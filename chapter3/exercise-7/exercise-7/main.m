//
//  main.m
//  exercise-7
//
//  Created by tonn2y on 15/1/4.
//  Copyright (c) 2015年 Tonny. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface XYpoint : NSObject

-(void) setX:(int) x;
-(int) getX;
-(void) setY:(int) y;
-(int) getY;
-(void) point;

@end

@implementation XYpoint
{
    int pointX;
    int pointY;
}

-(void) setX:(int)x
{
    pointX = x;
}

-(int) getX
{
    return pointX;
}

-(void) setY:(int)y
{
    pointY = y;
}

-(int) getY
{
    return pointY;
}

-(void) point
{
    NSLog(@"The Descartes Point is:(%i , %i)",pointX,pointY);
}

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        XYpoint *point = [XYpoint new];
        [point setX:1];
        [point setY:2];
        [point point];
        NSLog(@"The Descartes Point is:(%i , %i)",[point getX],[point getY]);
    }
    return 0;
}
