//
//  Square.h
//  exercise-5
//
//  Created by moony on 15/2/21.
//  Copyright (c) 2015年 moony. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Square : NSObject

-(instancetype) initWithSide:(int) s;
-(void) setSide:(int) s;
-(int) side;
-(int) area;
-(int) perimeter;

@end