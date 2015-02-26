//
//  AddressCard.m
//  program-11
//
//  Created by moony on 15/2/25.
//  Copyright (c) 2015年 moony. All rights reserved.
//


#import "AddressCard.h"

@implementation AddressCard

@synthesize name, email;

-(void) setName:(NSString *)theName andEmail:(NSString *)theEmail
{
    self.name = theName;
    self.email = theEmail;
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

-(NSComparisonResult) compareNames: (id) element
{
    return [name compare:[element name]];
}

@end
