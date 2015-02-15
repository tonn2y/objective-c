//
//  XYPoint.h
//  program-4
//
//  Created by moony on 15/1/26.
//  Copyright (c) 2015年 moony. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface XYPoint: NSObject

@property float x, y;

-(void) setX: (float) xVal andY: (float) yVal;
-(void) print;

@end