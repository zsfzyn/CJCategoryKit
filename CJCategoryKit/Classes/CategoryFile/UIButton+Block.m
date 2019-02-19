//
//  UIButton+Block.m
//  EasyGo
//
//  Created by ZZH on 16/4/12.
//  Copyright © 2016年 Ju. All rights reserved.
//

#import "UIButton+Block.h"
#import <objc/runtime.h>

static char *cj_buttonCallBackBlockKey;

@implementation UIButton (Block)

- (void)jh_clickActionBlock:(void (^)(UIButton *))clickCallBack {

    // 实现系统方法
    [self addTarget:self action:@selector(cj_buttonClick:) forControlEvents:UIControlEventTouchUpInside];
    
    if (clickCallBack) {
        
        // 替换系统方法
        objc_setAssociatedObject(self, &cj_buttonCallBackBlockKey, clickCallBack, OBJC_ASSOCIATION_COPY_NONATOMIC);
    }
}

- (void)cj_buttonClick:(UIButton *)sender {

    //取出替换后的方法
    void(^cj_buttonClickBlock)(UIButton *button) = objc_getAssociatedObject(sender, &cj_buttonCallBackBlockKey);
    
    //回调
    if (cj_buttonClickBlock) {
        cj_buttonClickBlock(sender);
    }

}

@end
