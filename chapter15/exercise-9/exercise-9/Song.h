//
//  Song.h
//  exercise-9
//
//  Created by moony on 15/3/8.
//  Copyright (c) 2015年 moony. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Song : NSObject

@property NSString *title, *artist, *album;
@property NSUInteger timePlayed;

-(instancetype) initWithTitle:(NSString *) theTitle andArtist:(NSString *) theArtist andAlbum:(NSString *) theAlbum andTimePlayed:(NSUInteger) theTimePlayed;
-(NSString *) description;

@end