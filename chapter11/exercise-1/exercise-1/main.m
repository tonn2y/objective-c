//
//  main.m
//  exercise-1
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
@end

@implementation Fraction (MathOps)

-(Fraction *) add:(Fraction *)f
{
    Fraction *result = [[Fraction alloc]init];
    
    result.numerator = (self.numerator * f.denominator) + (self.denominator * f.numerator);
    result.denominator = self.denominator * f.denominator;
    [result reduce];
    
    return result;
}

-(Fraction *) sub:(Fraction *)f
{
    Fraction *result = [[Fraction alloc]init];
    
    result.numerator = (self.numerator * f.denominator) - (self.denominator * f.numerator);
    result.denominator = self.denominator * f.denominator;
    [result reduce];
    
    return result;
}

-(Fraction *) mul:(Fraction *)f
{
    Fraction *result = [[Fraction alloc]init];
    
    result.numerator = self.numerator * f.numerator;
    result.denominator = self.denominator * f.denominator;
    [result reduce];
    
    return result;
}

-(Fraction *) div:(Fraction *)f
{
    Fraction *result = [[Fraction alloc]init];
    
    result.numerator = self.numerator * f.denominator;
    result.denominator = self.denominator * f.numerator;
    [result reduce];
    
    return result;
}

-(Fraction *) invert:(Fraction *)f
{
    Fraction *result = [[Fraction alloc]init];
    
    result.numerator = f.denominator;
    result.denominator = f.numerator;
    [result reduce];
    
    return result;
}

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Fraction *a = [[Fraction alloc]init];
        Fraction *b = [[Fraction alloc]init];
        Fraction *result;
        
        [a setTo:1 over:3];
        [b setTo:2 over:5];
        [a print];NSLog(@"  +");[b print];NSLog(@"-----");
        result = [a add:b];
        [result print];
        NSLog(@"\n");
        
        [a print];NSLog(@"  -");[b print];NSLog(@"-----");
        result = [a sub:b];
        [result print];
        NSLog(@"\n");
        
        [a print];NSLog(@"  *");[b print];NSLog(@"-----");
        result = [a mul:b];
        [result print];
        NSLog(@"\n");
        
        [a print];NSLog(@"  /");[b print];NSLog(@"-----");
        result = [a div:b];
        [result print];
        NSLog(@"\n");
        
        [a print];NSLog(@"invert is ");
        result = [a invert:a];
        [result print];
        

    }
    return 0;
}
