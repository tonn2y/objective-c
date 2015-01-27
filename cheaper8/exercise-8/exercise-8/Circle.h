//
//  Circle.h
//  exercise-5
//
//  Created by moony on 15/1/27.
//  Copyright (c) 2015年 moony. All rights reserved.
//

#import "GraphicObject.h"

@interface Circle : GraphicObject

@property float radius;

-(float) circumference;
-(float) area;

@end