//
//  UIImage+handle.h
//  WenLingCitizenCard
//
//  Created by 创建zzh on 2017/3/24.
//  Copyright © 2017年 zhusf. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (handle)

//用颜色生成一个 图片
+ (UIImage *)imageWithColor:(UIColor *)color;


//毛玻璃
- (UIImage *)applyLightEffect;
- (UIImage *)applyExtraLightEffect;
- (UIImage *)applyDarkEffect;
- (UIImage *)applyTintEffectWithColor:(UIColor *)tintColor;

- (UIImage *)applyBlurWithRadius:(CGFloat)blurRadius tintColor:(UIColor *)tintColor saturationDeltaFactor:(CGFloat)saturationDeltaFactor maskImage:(UIImage *)maskImage;
@end
