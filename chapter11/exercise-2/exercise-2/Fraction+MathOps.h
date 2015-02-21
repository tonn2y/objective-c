//
//  Fraction+MathOps.h
//  exercise-2
//
//  Created by moony on 15/2/20.
//  Copyright (c) 2015年 moony. All rights reserved.
//

#import "Fraction.h"

@interface Fraction (MathOps)
-(Fraction *) add:(Fraction *) f;
-(Fraction *) mul:(Fraction *) f;
-(Fraction *) sub:(Fraction *) f;
-(Fraction *) div:(Fraction *) f;
-(Fraction *) invert:(Fraction *) f;

-(BOOL) isEqualTo:(Fraction *) f;
-(int) compare:(Fraction *) f;

@end