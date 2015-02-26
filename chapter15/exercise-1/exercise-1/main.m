//
//  main.m
//  exercise-1
//
//  Created by moony on 15/2/26.
//  Copyright (c) 2015年 moony. All rights reserved.
//

#import <Foundation/Foundation.h>

#define SECINDAY (60 * 60 * 24)

@interface NSDate (ElapsedDays)

-(unsigned long) elapsedDays: (NSDate *) theDays;

@end

@implementation NSDate (ElapsedDays)

-(unsigned long) elapsedDays:(NSDate *)theDays
{
    return (unsigned long) [theDays timeIntervalSinceDate:self]/SECINDAY;
}

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //NSDate *start = [NSDate dateWithNaturalLanguageString: @"02/20/2015"];
        //NSDate *finish = [NSDate dateWithNaturalLanguageString:@"02/24/2015"];
        
        NSDateFormatter *dateFormatter = [[NSDateFormatter alloc]init];
        [dateFormatter setDateFormat:@"yyyy'/'MM'/'dd"];
        
        NSDate *start = [dateFormatter dateFromString:@"2015/02/20"];
        NSDate *finish = [dateFormatter dateFromString:@"2015/02/24"];
        
        NSLog(@"%lu",[start elapsedDays:finish]);
        NSLog(@"%lu",[start elapsedDays:[NSDate date]]);
    }
    return 0;
}
