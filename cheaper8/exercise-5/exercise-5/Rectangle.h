//
//  Rectangle.h
//  program-2
//
//  Created by moony on 15/1/26.
//  Copyright (c) 2015年 moony. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GraphicObject.h"

@class XYPoint;

@interface Rectangle : GraphicObject

@property float width, height;

-(XYPoint *) origin;
-(void) setOrigin: (XYPoint *) pt;
-(float) area;
-(float) perimeter;
-(void) setWidth:(float)w andHeight:(float) h;
-(void) translate:(XYPoint *) pt;

@end
