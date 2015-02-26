//
//  main.m
//  program-11
//
//  Created by moony on 15/2/25.
//  Copyright (c) 2015年 moony. All rights reserved.
//

#import "AddressCard.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *aName = @"Julia Kochan";
        NSString *aEmail = @"jewls337@axlc.com";
        NSString *bName = @"Tony Iannino";
        NSString *bEmail = @"tony.iannino@techfitness.com";
        
        AddressCard *card1 = [[AddressCard alloc]init];
        AddressCard *card2 = [[AddressCard alloc]init];
        
        [card1 setName:aName andEmail:aEmail];
        [card2 setName:bName andEmail:bEmail];
        
        [card1 print];
        [card2 print];
    }
    return 0;
}
