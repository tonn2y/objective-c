//
//  main.m
//  program-10
//
//  Created by moony on 15/2/25.
//  Copyright (c) 2015年 moony. All rights reserved.
//

#import "AddressCard.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *aName = @"Julia Kochan";
        NSString *aEmail = @"jewls3337@xlc.com";
        AddressCard *card = [[AddressCard alloc]init];
        [card setName:aName];
        [card setEmail:aEmail];
        [card print];
    }
    return 0;
}
