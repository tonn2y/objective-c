//
//  Square.h
//  program-3
//
//  Created by moony on 15/1/26.
//  Copyright (c) 2015年 moony. All rights reserved.
//

#import "Rectangle.h"

@interface Square : Rectangle

-(id) initWithSide:(int) side;
-(void) setSide: (int) s;
-(int) side;

@end
