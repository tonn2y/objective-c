//
//  AddressBook.h
//  program-12
//
//  Created by moony on 15/2/25.
//  Copyright (c) 2015年 moony. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AddressCard.h"

@interface AddressBook : NSObject

@property (nonatomic, copy) NSString *bookName;
@property (nonatomic, strong) NSMutableArray *book;

-(instancetype) initWithName: (NSString *) name;
-(void) addCard: (AddressCard *) theCard;
-(int) entries;
-(void) list;

@end