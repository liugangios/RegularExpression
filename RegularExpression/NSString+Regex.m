//
//  NSString+Regex.m
//  RegularExpression
//
//  Created by Gavin on 16/6/28.
//  Copyright © 2016年 Gavin. All rights reserved.
//

#import "NSString+Regex.h"

@implementation NSString (Regex)

- (BOOL)match:(NSString *)regular
{
    // 1.创建正则表达式
    NSRegularExpression *regex = [[NSRegularExpression alloc] initWithPattern:regular options:0 error:nil];
    // 2.测试字符串
    NSArray *results = [regex matchesInString:self options:0 range:NSMakeRange(0, self.length)];
    
    return results.count > 0;
}


- (BOOL)isTelephoneNumber
{
    return [self match:@"^(\\d{3,4}-)\\d{7,8}$"];
}

- (BOOL)isMobilephoneNumber
{
    return [self match:@"^1[3|4|5|7|8][0-9]\\d{8}$"];
}
- (BOOL)isIDNumber
{
    return [self match:@"\\d{14}[[0-9],0-9xX]"];
}
- (BOOL)isEmailAddress
{
    return [self match:@"^\\w+([-+.]\\w+)*@\\w+([-.]\\w+)*\\.\\w+([-.]\\w+)*$"];
}
- (BOOL)isUrl
{
    return [self match:@"^http://([\\w-]+\\.)+[\\w-]+(/[\\w-./?%&=]*)?$"];
}
- (BOOL)isQQ
{
    return [self match:@"[1-9][0-9]\{4,\\}"];
}
- (BOOL)isPostalCodeOfChina
{
    return [self match:@"[1-9]\\d{5}(?!\\d)"];
}
@end
