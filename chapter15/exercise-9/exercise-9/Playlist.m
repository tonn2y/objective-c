//
//  Playlist.m
//  exercise-9
//
//  Created by moony on 15/3/8.
//  Copyright (c) 2015年 moony. All rights reserved.
//

#import "Playlist.h"

@implementation Playlist

@synthesize playlistName, collectionOfSongs;

-(instancetype) initWithName:(NSString *)thePlaylistName andSongs:(NSMutableArray *)theCollectionOfSongs
{
    self = [super init];
    
    if (self) {
        playlistName = [NSString stringWithString:thePlaylistName];
        collectionOfSongs = [NSMutableArray arrayWithArray:theCollectionOfSongs];
    }
    return self;
}

-(instancetype) init
{
    return [self initWithName:@"noName" andSongs:nil];
}

-(instancetype) initWithPlayList:(Playlist *)thePlaylist
{
    self.playlistName = [thePlaylist playlistName];
    self.collectionOfSongs = [thePlaylist collectionOfSongs];
    return self;
}

-(void) setWithPlayList:(Playlist *)thePlaylist
{
    self.playlistName = [thePlaylist playlistName];
    self.collectionOfSongs = [thePlaylist collectionOfSongs];
}

-(void) addSong:(Song *)theSong
{
    if (![collectionOfSongs containsObject:theSong]) {
        [self.collectionOfSongs addObject:theSong];
    }
}

-(void) removeSong:(Song *)theSong
{
    for (int i =0; i< [self.collectionOfSongs count]; i++) {
        if ([[collectionOfSongs objectAtIndex:i] isEqualTo:theSong]) {
            [self.collectionOfSongs removeObjectAtIndex:i];
        }
    }
}

-(NSString *) description
{
    return [NSString stringWithFormat:@"%@", [[self.collectionOfSongs objectAtIndex:0]title] ];
}

@end
