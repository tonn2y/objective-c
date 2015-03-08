//
//  MusicCollection.m
//  exercise-9
//
//  Created by moony on 15/3/8.
//  Copyright (c) 2015年 moony. All rights reserved.
//

#import "MusicCollection.h"

@implementation MusicCollection

@synthesize library, collectionOfPlaylists;

-(instancetype) initWithLibrary:(Playlist *)theLibrary andCollectionOfPlaylists:(NSMutableArray *)theCollectionOfPlaylists
{
    self = [super init];
    if (self) {
        library = [[Playlist alloc]initWithPlayList:theLibrary];
        collectionOfPlaylists = [NSMutableArray arrayWithArray:theCollectionOfPlaylists];
    }
    return self;
}

-(instancetype) init
{
    return [self initWithLibrary:nil andCollectionOfPlaylists:nil];
}

-(void) addPlaylist:(Playlist *)thePlaylist
{
    [collectionOfPlaylists addObject:thePlaylist];
}

-(void) addLibrary:(Playlist *)theLibrary
{
    [library setWithPlayList:theLibrary];
}

-(void) addSong:(Song *)theSong toPlaylist:(NSString *)nameOfPlaylist
{
    if ([library.playlistName isEqualToString:nameOfPlaylist]) {
        if (![library.collectionOfSongs containsObject:theSong]) {
            [library addSong:theSong];
        }
    }else{
        for (int i = 0 ; i < [collectionOfPlaylists count]; i++) {
            if ([[collectionOfPlaylists[i] playlistName] isEqualToString:nameOfPlaylist]) {
                if (![[collectionOfPlaylists[i] collectionOfSongs] containsObject:theSong]) {
                    [collectionOfPlaylists[i] addSong:theSong];
                    if (![library.collectionOfSongs containsObject:theSong]) {
                        [library addSong:theSong];
                    }
                }
            }
        }
    }
}

-(void) removeSong:(Song *)theSong fromPlaylist:(NSString *)nameOfPlaylist
{
    if ([[library playlistName] isEqualToString:nameOfPlaylist]) {
        if ([[library collectionOfSongs]containsObject:theSong]) {
            [library removeSong:theSong];
            for (int i = 0; i < [collectionOfPlaylists count]; ++i) {
                if ([[collectionOfPlaylists[i] collectionOfSongs] containsObject:theSong]) {
                    [collectionOfPlaylists[i] removeSong:theSong];
                }
            }
        }
    }
}

@end