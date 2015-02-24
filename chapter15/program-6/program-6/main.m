//
//  main.m
//  program-6
//
//  Created by moony on 15/2/23.
//  Copyright (c) 2015年 moony. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *str1 = @"This is string A";
        NSString *str2 = @"This is string B";
        NSMutableString *mstr;
        NSRange substr;
        
        //从不可变字符串创建可变字符串
        mstr = [NSMutableString stringWithString:str1];
        NSLog(@"%@", mstr);
        
        //插入字符
        [mstr insertString:@" mutable" atIndex:7];
        NSLog(@"%@", mstr);
        
        //插入末尾进行有效拼接
        [mstr insertString:@" and string B" atIndex:[mstr length]];
        NSLog(@"%@", mstr);
        
        //直接使用appendString
        [mstr appendString:@" and string C"];
        NSLog(@"%@", mstr);
        
        //根据范围删除字符串
        [mstr deleteCharactersInRange:NSMakeRange(16, 13)];
        NSLog(@"%@", mstr);
        
        //查找然后将其删除
        substr = [mstr rangeOfString:@"string B and "];
        if (substr.location != NSNotFound) {
            [mstr deleteCharactersInRange:substr];
            NSLog(@"%@", mstr);
        }
        
        //直接设置为可变的字符串
        [mstr setString:@"This is string A"];
        NSLog(@"%@", mstr);
        
        //替换一些字符
        [mstr replaceCharactersInRange:NSMakeRange(8, 8) withString:@"a mutable string"];
        NSLog(@"%@", mstr);
        
        //查找和替换
        NSString *search = @"This is";
        NSString *replace = @"An example of";
        
        substr = [mstr rangeOfString:search];
        
        if (substr.location != NSNotFound) {
            [mstr replaceCharactersInRange:substr withString:replace];
            NSLog(@"%@", mstr);
        }
        
        //查找和替换所有的匹配项
        search = @"a";
        replace = @"X";
        
        substr = [mstr rangeOfString:search];
        while (substr.location != NSNotFound) {
            [mstr replaceCharactersInRange:substr withString:replace];
            substr = [mstr rangeOfString:search];
        }
        NSLog(@"%@", mstr);
        
        
        //使用replaceOccurrenceOfString全部替换
        [mstr replaceOccurrencesOfString:replace withString:search options:nil range:NSMakeRange(0, [mstr length])];
        NSLog(@"%@", mstr);
    }
    return 0;
}
