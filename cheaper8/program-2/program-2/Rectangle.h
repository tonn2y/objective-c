//
//  Rectangle.h
//  program-2
//
//  Created by moony on 15/1/26.
//  Copyright (c) 2015年 moony. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Rectangle : NSObject

@property int width, height;
-(int) area;
-(int) perimeter;
-(void) setWidth:(int)w andHeight:(int) h;
@end
