//
//  main.m
//  exercise-7
//
//  Created by tonn2y on 15/1/6.
//  Copyright (c) 2015年 Tonny. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Rectangle : NSObject

-(void) setWidth:(int) w;
-(void) setHeight:(int) h;
-(int) width;
-(int) height;
-(int) area;
-(int) perimeter;

@end

@implementation Rectangle
{
    int width;
    int height;
}

-(void) setWidth:(int)w
{
    width = w;
}

-(void) setHeight:(int)h
{
    height = h;
}

-(int) width
{
    return width;
}

-(int) height
{
    return  height;
}

-(int) area
{
    return width * height;
}

-(int) perimeter
{
    return width * 2 + height * 2;
}

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int area,perimeter;
        
        Rectangle *rectangle = [Rectangle new];
        
        [rectangle setWidth:20];
        [rectangle setHeight:10];
        area = [rectangle area];
        perimeter = [rectangle perimeter];
        
        NSLog(@" The area of rectangle is %i",area);
        NSLog(@" The area of rectangle is %i",[rectangle width] * [rectangle height]);
        NSLog(@"The perimeter of rectangle is %i",[rectangle perimeter]);
        NSLog(@"The perimeter of rectangle is %i",[rectangle width] * 2 + [rectangle height] * 2);
    }
    return 0;
}
