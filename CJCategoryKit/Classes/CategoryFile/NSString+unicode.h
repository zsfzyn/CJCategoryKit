//
//  NSString+unicode.h
//  JinHuaCitizen
//
//  Created by 朱书峰 on 2017/8/28.
//  Copyright © 2017年 Frank-Lee. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (unicode)
- (NSString *)unicodeString;
/**
处理URL在网站上能打开，在APP上打不开问题
@param string 源链接
@return 返回后处理的链接
*/
+ (NSURL *)urlStringEncodedString:(NSString *)string;

/**
将json字典字符串转换成字典

 @param jsonString json字符串
 @return 字典
 */
+ (NSDictionary *)dictionaryWithJsonString:(NSString *)jsonString;
@end
