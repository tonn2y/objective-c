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

-(BOOL) removeName:(NSString *)theName
{
    AddressCard *card =    [self lookup:theName];
    if (card) {
        [self removeCard:card];
        return YES;
    }
    return NO;
}

-(int) entries
{
    return (int)[book count];
}

-(void) list
{
    NSLog(@"======== Contents of: %@ ========", bookName);
    
    [self.book enumerateObjectsUsingBlock: ^(AddressCard *theCard, NSUInteger idx, BOOL *stop) {
        NSLog(@"%-20s    %-32s", [theCard.name UTF8String], [theCard.email UTF8String]);
    }
     ];
    NSLog(@"===================================================");
}

-(AddressCard *) lookup:(NSString *)theName
{
    NSUInteger result = [book indexOfObjectPassingTest:^BOOL(id obj, NSUInteger idx, BOOL *stop) {
        if ([[[obj name] lowercaseString] rangeOfString:[theName lowercaseString]].length > 0) {
            *stop = YES;
            return YES;
        }
        else
        {
            return NO;
        }
    }];
    
    if (result != NSNotFound) {
        return book[result];
    }
    
    return nil;
}

-(void) sort
{
    [book sortUsingComparator:^NSComparisonResult(id obj1, id obj2) {
        return [[obj1 name] compare:[obj2 name]];
    }];
}

@end
