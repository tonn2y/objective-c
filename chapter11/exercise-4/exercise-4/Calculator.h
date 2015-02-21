//
//  Calculator.h
//  exercise-4
//
//  Created by moony on 15/2/21.
//  Copyright (c) 2015年 moony. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Calculator : NSObject

-(void) setAccumulator: (double) value;
-(void) clear;
-(double) accumulator;

-(void) add: (double) value;
-(void) subtract: (double) value;
-(void) multiply: (double) value;
-(void) divide: (double) value;

@end

@interface Calculator (Trig)

-(double) sin;
-(double) cos;
-(double) tan;

@end
