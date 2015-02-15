//
//  Triangle.h
//  exercise-5
//
//  Created by moony on 15/1/27.
//  Copyright (c) 2015年 moony. All rights reserved.
//

#import "GraphicObject.h"

@interface Triangle : GraphicObject

@property float aValue, bValue, cValue;

-(float) perimeter;
-(float) area;
-(void) setAVal:(float)a BVal:(float)b CVal:(float)c;

@end
