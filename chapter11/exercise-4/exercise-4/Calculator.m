//
//  Calculator.m
//  exercise-4
//
//  Created by moony on 15/2/21.
//  Copyright (c) 2015年 moony. All rights reserved.
//

#import "Calculator.h"

@implementation Calculator{
    double accumulator;
}

-(void) setAccumulator: (double) value{
    accumulator = value;
}
-(void) clear{
    accumulator = 0;
}
-(double) accumulator{
    return accumulator;
}
-(void) add: (double) value{
    accumulator += value;
}
-(void) subtract: (double) value{
    accumulator -= value;
}
-(void) multiply: (double) value{
    accumulator *= value;
}
-(void) divide: (double) value{
    accumulator /= value;
}

@end

@implementation Calculator (Trig)

-(double) sin
{
    return sin(accumulator);
}

-(double) cos
{
    return cos(accumulator);
}

-(double) tan
{
    return tan(accumulator);
}

@end
