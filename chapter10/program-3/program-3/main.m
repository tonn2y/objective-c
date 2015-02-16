//
//  main.m
//  program-3
//
//  Created by moony on 15/2/16.
//  Copyright (c) 2015年 moony. All rights reserved.
//

#import <Foundation/Foundation.h>
//打印每月的天数
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        enum month: unsigned short int { january =1, february, march, april, may, june, july, august, september, october, november, december};
        enum month amonth;
        int days;
        
        NSLog(@"Enter month number:");
        scanf("%hu",&amonth);
        
        switch (amonth) {
            case january:
                case march:
                case may:
                case july:
                case august:
                case october:
                case december:
                days = 31;
                break;
                case april:
                case june:
                case september:
                case november:
                days = 30;
                break;
                case february:
                days = 28;
                break;
            default:
                NSLog(@"bad month number");
                days = 0;
                break;
        }
        
        if (days != 0) {
            NSLog(@"Number of days is %i", days);
        }
        
        if (amonth == february) {
            NSLog(@"...or 29 if it's a leap year");
        }
    }
    return 0;
}
