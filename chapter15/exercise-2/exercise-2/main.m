//
//  main.m
//  exercise-2
//
//  Created by moony on 15/2/26.
//  Copyright (c) 2015年 moony. All rights reserved.
//

#import "AddressBook.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *aName = @"Julia Kochan";
        NSString *aEmail = @"jewls3337@axlc.com";
        
        NSString *bName = @"Tony Iannino";
        NSString *bEmail = @"tony.iannino@techfitness.com";
        
        NSString *cName = @"Stephen Kochan";
        NSString *cEmail = @"seteve@classroomM.com";
        
        NSString *dName = @"Steve Smith";
        NSString *dEmail = @"steve@hotmail.com";
        
        AddressCard *card1 = [[AddressCard alloc]init];
        AddressCard *card2 = [[AddressCard alloc]init];
        AddressCard *card3 = [[AddressCard alloc]init];
        AddressCard *card4 = [[AddressCard alloc]init];
        
        //创建一个新的地址簿
        AddressBook *myBook = [[AddressBook alloc]initWithName:@"Linda's Address Book"];
        
        //创建4个地址卡片
        [card1 setName:aName andEmail:aEmail];
        [card2 setName:bName andEmail:bEmail];
        [card3 setName:cName andEmail:cEmail];
        [card4 setName:dName andEmail:dEmail];
        
        //将地址卡片添加到地址簿
        [myBook addCard:card1];
        [myBook addCard:card2];
        [myBook addCard:card3];
        [myBook addCard:card4];
    
        [[myBook lookup:@"steve"] print];
    }
    return 0;
}
