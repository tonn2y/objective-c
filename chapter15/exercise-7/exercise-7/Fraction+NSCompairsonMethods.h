//
//  Fraction+NSCompairsonMethods.h
//  exercise-3
//
//  Created by moony on 15/2/21.
//  Copyright (c) 2015年 moony. All rights reserved.
//

#import "Fraction+MathOps.h"

@interface Fraction (NSCompairsonMethods)

-(BOOL) isEqualTo:(Fraction *) f;
-(BOOL) isLessThanOrEqualTo:(Fraction *) f;
-(BOOL) isLessThan:(Fraction *) f;
-(BOOL) isGreaterThanOrEqualTo:(Fraction *) f;
-(BOOL) isGreaterThan:(Fraction *) f;
-(BOOL) isNotEqualTo:(Fraction *) f;

@end
