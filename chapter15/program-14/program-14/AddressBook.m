//
//  AddressBook.m
//  program-12
//
//  Created by moony on 15/2/25.
//  Copyright (c) 2015年 moony. All rights reserved.
//

#import "AddressBook.h"

@implementation AddressBook

@synthesize bookName, book;

-(instancetype) initWithName:(NSString *)name
{
    self = [super init];
    if (self) {
        bookName = [NSString stringWithString:name];
        book = [NSMutableArray array];
    }
    return self;
}

-(instancetype) init
{
    return [self initWithName:@"NoName"];
}

-(void) addCard:(AddressCard *)theCard
{
    [book addObject:theCard];
}

-(void) removeCard:(AddressCard *)theCard
{
    [book removeObjectIdenticalTo:theCard];
}

-(int) entries
{
    return (int)[book count];
}

-(void) list
{
    NSLog(@"======== Contents of: %@ ========", bookName);
    
    for (AddressCard *theCard in book) {
        NSLog(@"%-20s   %-32s", [theCard.name UTF8String],[theCard.email UTF8String]);
    }
    
    NSLog(@"===================================================");
}

-(AddressCard *) lookup:(NSString *)theName
{
    for (AddressCard *nextCard in book) {
        if ([nextCard.name caseInsensitiveCompare:theName] == NSOrderedSame) {
            return nextCard;
        }
    }
    return nil;
}

@end
