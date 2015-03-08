//
//  Playlist.h
//  exercise-9
//
//  Created by moony on 15/3/8.
//  Copyright (c) 2015年 moony. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Song.h"

@interface Playlist : NSObject

@property (copy, nonatomic) NSString *playlistName;
@property (strong, nonatomic) NSMutableArray *collectionOfSongs;

-(instancetype) initWithName:(NSString *) thePlaylistName andSongs:(NSMutableArray *) theCollectionOfSongs;
-(instancetype) initWithPlayList:(Playlist *) thePlaylist;

-(void) setWithPlayList:(Playlist *) thePlaylist;
-(void) addSong:(Song *) theSong;
-(void) removeSong:(Song *) theSong;

-(NSString *) description;

@end