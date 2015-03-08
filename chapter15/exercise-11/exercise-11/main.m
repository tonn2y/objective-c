//
//  main.m
//  exercise-11
//
//  Created by moony on 15/3/8.
//  Copyright (c) 2015年 moony. All rights reserved.
//

#import "AddressBook.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        AddressBook *myBook = [[AddressBook alloc] init];
        AddressCard *myCard = [[AddressCard alloc] init];
        
        [myCard setName:@"Misigh Listowski" andEmail:@"midalist@gmail.com" andAddress:@"other things" andCity:@"Joszalin" andCountry:@"Polska" andPhoneNumber:@"+48 *** *** ***"];
        [myBook addCard:myCard];
        NSLog(@"%@", [[myBook.book objectAtIndex:0] name]);
        
        [myCard setName:@"Dawid Listowski"];
        NSLog(@"%@", [[myBook.book objectAtIndex:0] name]);
        
        [[myBook.book objectAtIndex:0] setName:@"Misigh Dawid Listowski"];
        NSLog(@"%@", [[myBook.book objectAtIndex:0] name]);

    }
    return 0;
}
