//
//  NSString+unicode.m
//  JinHuaCitizen
//
//  Created by 朱书峰 on 2017/8/28.
//  Copyright © 2017年 Frank-Lee. All rights reserved.
//

#import "NSString+unicode.h"

@implementation NSString (unicode)
- (NSString *)unicodeString{
    
    NSString *tempStr1 = [self stringByReplacingOccurrencesOfString:@"\\u" withString:@"\\U"];
    
    NSString *tempStr2 = [tempStr1 stringByReplacingOccurrencesOfString:@"\"" withString:@"\\\""];
    
    NSString *tempStr3 = [[@"\"" stringByAppendingString:tempStr2] stringByAppendingString:@"\""];
    
    NSData *tempData = [tempStr3 dataUsingEncoding:NSUTF8StringEncoding];
    
    
    NSPropertyListFormat format = NSPropertyListOpenStepFormat;
    
    NSString *returnStr = [NSPropertyListSerialization propertyListWithData:tempData options:NSPropertyListImmutable format:&format error:nil];
    
    return [returnStr stringByReplacingOccurrencesOfString:@"\\r\\n" withString:@"\n"];
    
    
}
/**
 处理URL在网站上能打开，在APP上打不开问题
 
 @param string 源链接
 @return 返回后处理的链接
 */
+ (NSURL *)urlStringEncodedString:(NSString *)string {
  
    NSString *urlString =[[NSString stringWithFormat:@"%@", string] stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    NSURL *url =[NSURL URLWithString:[NSString stringWithFormat:@"%@",urlString]];
    return url;
}
/**
 将json字典字符串转换成字典
 @param jsonString json字符串
 @return 字典
 */
+ (NSDictionary *)dictionaryWithJsonString:(NSString *)jsonString
{
    if (jsonString == nil) {
        return nil;
    }
    if ([jsonString isEqualToString:@"null"]) {
        return nil;
    }
    NSData *jsonData = [jsonString dataUsingEncoding:NSUTF8StringEncoding];
    NSError *err;
    NSDictionary *dic = [NSJSONSerialization JSONObjectWithData:jsonData
                                                        options:NSJSONReadingMutableContainers
                                                          error:&err];
    if(err)
    {
        NSLog(@"json解析失败：%@",err);
        return nil;
    }
    NSString *dataStr = [NSString stringWithFormat:@"%@",dic];
    if ([dataStr isEqualToString:@"null"]) {
        return nil;
    }
    return dic;
}
@end
