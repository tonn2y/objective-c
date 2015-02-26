//
//  AddressCard.h
//  program-10
//
//  Created by moony on 15/2/25.
//  Copyright (c) 2015年 moony. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AddressCard : NSObject

-(void) setName: (NSString *) theName;
-(void) setEmail: (NSString *) theEmail;
-(NSString *) name;
-(NSString *) email;

-(void) print;

@end