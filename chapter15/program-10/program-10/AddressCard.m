//
//  AddressCard.m
//  program-10
//
//  Created by moony on 15/2/25.
//  Copyright (c) 2015年 moony. All rights reserved.
//

#import "AddressCard.h"

@implementation AddressCard
{
    NSString *name;
    NSString *email;
}

-(void) setName:(NSString *)theName
{
    if (name != theName) {
        name = [NSString stringWithString:theName];
    }
}

-(void) setEmail:(NSString *)theEmail
{
    if (email != theEmail) {
        email = [NSString stringWithString:theEmail];
    }
}

-(NSString *) name
{
    return name;
}

-(NSString *) email
{
    return email;
}

-(void) print
{
    NSLog(@"====================================");
    NSLog(@"|                                  |");
    NSLog(@"|  %-31s |", [name UTF8String]);
    NSLog(@"|  %-31s |", [email UTF8String]);
    NSLog(@"|                                  |");
    NSLog(@"|                                  |");
    NSLog(@"|                                  |");
    NSLog(@"|        O               O         |");
    NSLog(@"====================================");
}

@end
