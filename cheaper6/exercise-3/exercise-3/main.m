//
//  main.m
//  exercise-3
//
//  Created by tonn2y on 15/1/17.
//  Copyright (c) 2015年 Tonny. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fraction : NSObject

-(void) print;
-(void) setNumerator:(int) n;
-(void) setDenominator:(int) d;
-(int) numerator;
-(int) denominator;
-(double) convertToNum;

@end

@implementation Fraction
{
    int numerator;
    int denominator;
}

-(void) print
{
    if (denominator == 1) {
        NSLog(@"%i",numerator);
    }
    else if(denominator == 0)
    {
        NSLog(@"%i",0);
    }
    else
    {
        NSLog(@" %i/%i",numerator,denominator);
    }
}

-(void) setNumerator:(int)n
{
    numerator = n;
}

-(void) setDenominator:(int)d
{
    denominator = d;
}

-(int) numerator
{
    return numerator;
}

-(int) denominator
{
    return denominator;
}

-(double) convertToNum
{
    if (denominator != 0) {
        return (double) numerator / denominator;
    }
    else
    {
        return  NAN;
    }
}

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Fraction *aFraction = [[Fraction alloc] init];
        Fraction *bFraction = [[Fraction alloc] init];
        
        [aFraction setNumerator:5];
        [aFraction setDenominator:1];
        
        [aFraction print];
        
        [bFraction setNumerator:6];
        [bFraction setDenominator:0];
        [bFraction print];

    }
    return 0;
}
