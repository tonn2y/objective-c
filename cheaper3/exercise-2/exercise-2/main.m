//
//  main.m
//  exercise-2
//
//  Created by tonn2y on 15/1/4.
//  Copyright (c) 2015年 Tonny. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Car : NSObject

-(void) prep;
-(void) drive:(int) d;
-(void) wash;
-(void) putGas:(int) g;
-(int) getGas;
-(int) mileage;

@end

@implementation Car
{
    int mileage;
    int dust;
    int gas;
}

-(void) prep
{
    NSLog(@"This is myCar");
}

-(void) drive:(int)d
{
    mileage += d;
}

-(void) wash
{
    dust = 0;
    NSLog(@"myCar's dust is:%i",dust);
}

-(void) putGas:(int)g
{
    gas = g;
    NSLog(@"myCar's gas is:%i",gas);
}

-(int) getGas
{
    return gas;
}

-(int) mileage
{
    return mileage;
}

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Car *car = [[Car alloc] init];
        [car prep];
        [car putGas:500];
        [car wash];
        [car drive:100];
        NSLog(@"myCar's mileage is:%i",[car mileage]);
        [car drive:200];
        NSLog(@"myCar's mileage is:%i",[car mileage]);
    }
    return 0;
}
