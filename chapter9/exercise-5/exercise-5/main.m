//
//  main.m
//  exercise-5
//
//  Created by moony on 15/2/15.
//  Copyright (c) 2015年 moony. All rights reserved.
//

#import "Fraction.h"
#import "Complex.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Fraction *fraction = [[Fraction alloc]init];
        Complex *complex = [[Complex alloc]init];
        id number = [[Complex alloc]init];
        
        if ([fraction isMemberOfClass:[Complex class]]) {
            NSLog(@"fraction is a member of Complex class");
        }
        
        if ([complex isMemberOfClass:[NSObject class]]) {
            NSLog(@"complex is a member of NSObject class");
        }
        
        if ([complex isKindOfClass:[NSObject class]]) {
            NSLog(@"complex is a kind of NSObject");
        }
        
        if ([fraction isKindOfClass:[Fraction class]]) {
            NSLog(@"fraction is a kind of Fraction");
        }
        
        if ([fraction respondsToSelector:@selector(print)]) {
            NSLog(@"fraction respond to print method");
        }
        
        if ([complex respondsToSelector:@selector(print)]) {
            NSLog(@"complex respond to print method");
        }
        
        if ([Fraction instancesRespondToSelector:@selector(print)]) {
            NSLog(@"Instance of Fraction respond to print method");
        }
        
        if ([number respondsToSelector:@selector(print)]) {
            NSLog(@"number respond to print method");
        }
        
        if ([number isKindOfClass:[Complex class]]) {
            NSLog(@"number is a kind of Complex class");
        }
        
        if ([[number class] respondsToSelector:@selector(alloc)]) {
            NSLog(@"number class respond to alloc method");
        }
    }
    return 0;
}
