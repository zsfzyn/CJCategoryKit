//
//  UILabel+Easy.m
//  JinHuaCitizen
//
//  Created by 朱书峰 on 2017/9/4.
//  Copyright © 2017年 Frank-Lee. All rights reserved.
//

#import "UILabel+Easy.h"

@implementation UILabel (Easy)
- (instancetype)inittextFont:(CGFloat )font textColor:(UIColor *)color textAlignment:(NSTextAlignment )textAlignment {
    UILabel *label = [[UILabel alloc]init];
    //[UIFont systemFontOfSize:font]
    label.font = [UIFont systemFontOfSize:font];
    label.textColor = color;
    label.textAlignment = textAlignment;
    return label;
}
- (instancetype)initWithFrame:(CGRect)frame textFont:(CGFloat )font textColor:(UIColor *)color textAlignment:(NSTextAlignment )textAlignment {
    UILabel *label = [[UILabel alloc]initWithFrame:frame];
//    [UIFont systemFontOfSize:font]
    label.font = [UIFont systemFontOfSize:font];
    label.textColor = color;
    label.textAlignment = textAlignment;
    return label;
}
@end
