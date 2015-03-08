//
//  Fraction+Comparision.m
//  exercise-8
//
//  Created by moony on 15/3/8.
//  Copyright (c) 2015年 moony. All rights reserved.
//

#import "Fraction+Comparision.h"

@implementation Fraction (Comparision)

-(NSComparisonResult) comparisionFraction:(Fraction *)frac
{
    double selfFact = self.numerator / self.denominator;
    double formFact = frac.numerator / frac.denominator;
    
    if (selfFact < formFact) {
        return NSOrderedAscending;
    }else if (selfFact > formFact)
        return  NSOrderedDescending;
    return NSOrderedSame;
}

@end