//
//  main.m
//  exercise-5
//
//  Created by tonn2y on 15/1/4.
//  Copyright (c) 2015年 Tonny. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Vehicle : NSObject

-(void) prep;
-(int) getGas;
-(void) service;

@end

@implementation Vehicle
{
    int gas;
}

-(void) prep
{
    NSLog(@"The vehicle is mine");
}

-(int) getGas
{
    return 0;
}

-(void) service
{
    NSLog(@"The vehicle service me");
}

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Vehicle *myVehicle = [Vehicle new];
        [myVehicle prep];
        [myVehicle getGas];
        [myVehicle service];
    }
    return 0;
}
