//
//  Fraction+NSComparisonMethods.m
//  exercise-3
//
//  Created by moony on 15/2/21.
//  Copyright (c) 2015年 moony. All rights reserved.
//

#import "Fraction+NSCompairsonMethods.h"

@implementation Fraction (NSCompairsonMethods)

-(BOOL) isEqualTo:(Fraction *)f
{
    [self reduce];
    [f reduce];
    
    if ([self compare:f] == 0)  {
        return (BOOL)1;
    }
    return (BOOL)0;
}

-(BOOL) isLessThanOrEqualTo:(Fraction *)f
{
    [self reduce];
    [f reduce];
    
    if ([self compare:f] <= 0) {
        return (BOOL)1;
    }
    return (BOOL)0;
}

-(BOOL) isLessThan:(Fraction *)f
{
    [self reduce];
    [f reduce];
    
    if([self compare:f] < 0){
        return (BOOL)1;
    }
    return (BOOL)0;
}

-(BOOL) isGreaterThan:(Fraction *)f
{
    [self reduce];
    [f reduce];
    
    if ([self compare:f] > 0) {
        return (BOOL)1;
    }
    return (BOOL)0;
}

-(BOOL) isGreaterThanOrEqualTo:(Fraction *)f
{
    [self reduce];
    [f reduce];
    
    if ([self compare:f] >= 0) {
        return (BOOL)1;
    }
    return (BOOL)0;
}

-(BOOL) isNotEqualTo:(Fraction *)f
{
    [self reduce];
    [f reduce];
    
    if ([self compare:f] != 0) {
        return (BOOL)1;
    }
    return  (BOOL)0;
}

@end
