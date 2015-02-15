//
//  Complex.h
//  program-1
//
//  Created by moony on 15/2/15.
//  Copyright (c) 2015年 moony. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Complex : NSObject

@property double real, imaginary;

-(void) print;
-(void) setReal:(double) a andImaginary:(double) b;
-(Complex *) add:(Complex *) f;
-(id) addId:(id) f;

@end