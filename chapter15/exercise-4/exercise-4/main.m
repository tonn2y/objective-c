//
//  main.m
//  exercise-4
//
//  Created by moony on 15/2/26.
//  Copyright (c) 2015年 moony. All rights reserved.
//

#import "AddressBook.h"

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
        
        // 创建一个地址簿
        
        AddressBook *myBook = [[AddressBook alloc] initWithName:@"Linda's Addres Book"];
        
        // 添加4个地址信息
        
        [card1 setName:aName andEmail:aEmail andAddress:abcdAddress andCity:abcdCity andCountry:abcdCountry andPhoneNumber:abcdPhoneNumber];
        [card2 setName:bName andEmail:bEmail andAddress:abcdAddress andCity:abcdCity andCountry:abcdCountry andPhoneNumber:abcdPhoneNumber];
        [card3 setName:cName andEmail:cEmail andAddress:abcdAddress andCity:abcdCity andCountry:abcdCountry andPhoneNumber:abcdPhoneNumber];
        [card4 setName:dName andEmail:dEmail andAddress:abcdAddress andCity:abcdCity andCountry:abcdCountry andPhoneNumber:abcdPhoneNumber];
        
        
        // 将地址卡添加到地址簿中
        
        [myBook addCard:card1];
        [myBook addCard:card2];
        [myBook addCard:card3];
        [myBook addCard:card4];
        
        NSArray *my = [NSArray arrayWithArray:[myBook lookup:@"Kochan"]];
        for (int i = 0; i < [my count]; ++i) {
            [my[i] print];
        }
        
        [myBook list];    }
    return 0;
}
