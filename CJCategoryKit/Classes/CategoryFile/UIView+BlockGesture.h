//
//  UIView+BlockGesture.h
//  EasyGo
//
//  Created by ZZH on 16/3/24.
//  Copyright © 2016年 Ju. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^GestureActionBlock)(UIGestureRecognizer *gestureRecoginzer);

@interface UIView (BlockGesture)

/**
 *  给view添加点击手势
 *
 *  @param tapBlock 回调block
 */
- (void)cj_addTapGestureWithBlock:(GestureActionBlock)tapBlock;

/**
 *  给view添加长按手势
 *
 *  @param longPressBlock 回调block
 */
- (void)cj_addLongPressWithBlock:(GestureActionBlock)longPressBlock;


@end
