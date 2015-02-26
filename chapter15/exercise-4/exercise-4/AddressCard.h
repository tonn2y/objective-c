//
//  AddressCard.h
//  program-11
//
//  Created by moony on 15/2/25.
//  Copyright (c) 2015年 moony. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AddressCard : NSObject

@property (copy, nonatomic) NSString *name, *email,*address, *city, *country, *phoneNumber;

-(void) setName: (NSString *) theName andEmail:(NSString *) theEmail;
-(void) setName:(NSString *) theName andEmail:(NSString *) theEmail andAddress:(NSString *) theAddress andCity:(NSString *) theCity andCountry:(NSString *) theCountry andPhoneNumber:(NSString *) thePhoneNumber;
-(void) print;

@end