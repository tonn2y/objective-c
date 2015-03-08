//
//  Song.m
//  exercise-9
//
//  Created by moony on 15/3/8.
//  Copyright (c) 2015年 moony. All rights reserved.
//

#import "Song.h"

@implementation Song

@synthesize title,artist, album, timePlayed;

-(instancetype) initWithTitle:(NSString *)theTitle andArtist:(NSString *)theArtist andAlbum:(NSString *)theAlbum andTimePlayed:(NSUInteger)theTimePlayed
{
    self = [super init];
    if (self) {
        title = theTitle;
        artist = theArtist;
        album = theAlbum;
        timePlayed = theTimePlayed;
    }
    return self;
}

-(NSString *) description
{
    return [NSString stringWithFormat:@"%-12s : %-12s : %-12s : %3lu", [self.title UTF8String], [self.artist UTF8String], [self.album UTF8String], self.timePlayed];
}

@end
