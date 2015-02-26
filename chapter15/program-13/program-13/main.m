//
//  main.m
//  program-13
//
//  Created by moony on 15/2/25.
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
        
        NSString *dName = @"Jamie Baker";
        NSString *dEmail = @"jbaker@classroomM.com";
        
        AddressCard *card1 = [[AddressCard alloc]init];
        AddressCard *card2 = [[AddressCard alloc]init];
        AddressCard *card3 = [[AddressCard alloc]init];
        AddressCard *card4 = [[AddressCard alloc]init];
        
        //创建一个新的地址簿
        AddressBook *myBook = [[AddressBook alloc]initWithName:@"Linda's Address Book"];
        AddressCard *myCard;
        
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
        
        //通过名字查找一个人
        NSLog(@"Stephen Kochan");
        myCard = [myBook lookup:@"stephen kochan"];
        
        if (myCard != nil) {
            [myCard print];
        }
        else
        {
            NSLog(@"Not found!");
        }
        
        //尝试另一种查找
        NSLog(@"Haibo Zhang");
        myCard = [myBook lookup:@"Haibo Zhang"];
        
        if (myCard != nil) {
            [myCard print];
        }else
        {
            NSLog(@"Not found!");
        }
        
    }
    return 0;
}
