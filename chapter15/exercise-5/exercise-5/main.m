//
//  main.m
//  exercise-5
//
//  Created by moony on 15/3/8.
//  Copyright (c) 2015年 moony. All rights reserved.
//

#import "AddressBook.h"
#import "AddressCard.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *aName = @"Julia Kochan";
        NSString *aEmail = @"jewls337@axlc.com";
        NSString *bName = @"Tony Iannino";
        NSString *bEmail = @"tony.iannino@techfitnes.com";
        NSString *cName = @"Stephen Kochan";
        NSString *cEmail = @"steve@classroomM.com";
        NSString *dName = @"Steve Smith";
        NSString *dEmail = @"steve@hotmail.com";
        NSString *abcdAddress = @"Standard 1";
        NSString *abcdCity = @"Koszalin";
        NSString *abcdCountry = @"Poland";
        NSString *abcdPhoneNumber = @"+48 000 000 000";
        
        
        AddressCard *card1 = [[AddressCard alloc] init];
        AddressCard *card2 = [[AddressCard alloc] init];
        AddressCard *card3 = [[AddressCard alloc] init];
        AddressCard *card4 = [[AddressCard alloc] init];
        
        AddressBook *myBook = [[AddressBook alloc] initWithName:@"Linda's Addres Book"];
        
        [card1 setName:aName andEmail:aEmail andAddress:abcdAddress andCity:abcdCity andCountry:abcdCountry andPhoneNumber:abcdPhoneNumber];
        [card2 setName:bName andEmail:bEmail andAddress:abcdAddress andCity:abcdCity andCountry:abcdCountry andPhoneNumber:abcdPhoneNumber];
        [card3 setName:cName andEmail:cEmail andAddress:abcdAddress andCity:abcdCity andCountry:abcdCountry andPhoneNumber:abcdPhoneNumber];
        [card4 setName:dName andEmail:dEmail andAddress:abcdAddress andCity:abcdCity andCountry:abcdCountry andPhoneNumber:abcdPhoneNumber];
        
        [myBook addCard:card1];
        [myBook addCard:card2];
        [myBook addCard:card3];
        [myBook addCard:card4];
        
        NSArray *my = [NSArray arrayWithArray:[myBook lookup:@"steve"]];
        for (int i = 0; i < [my count]; ++i) {
            [my[i] print];
        }
    }
    return 0;
}
