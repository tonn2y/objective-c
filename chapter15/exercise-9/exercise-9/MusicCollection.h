//
//  MusicCollection.h
//  exercise-9
//
//  Created by moony on 15/3/8.
//  Copyright (c) 2015年 moony. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Playlist.h"

@interface MusicCollection : NSObject

@property Playlist *library;
@property NSMutableArray *collectionOfPlaylists;

-(instancetype) initWithLibrary:(Playlist *) theLibrary andCollectionOfPlaylists:(NSMutableArray *) theCollectionOfPlaylists;

-(void) addPlaylist:(Playlist *) thePlaylist;
-(void) addLibrary:(Playlist *) theLibrary;
-(void) addSong:(Song *) theSong toPlaylist:(NSString *) nameOfPlaylist;
-(void) removeSong:(Song *) theSong fromPlaylist:(NSString *) nameOfPlaylist;

@end