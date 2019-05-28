//
//  UIImage+RUIimage.m
//  FakeQQDemo
//
//  Created by 李正国 on 2019/4/3.
//  Copyright © 2019 李正国. All rights reserved.
//

#import "UIImage+RUIimage.h"

@implementation UIImage (RUIimage)
-(UIImage *)imageWithCornerRadius:(CGFloat)radius ofSize:(CGSize)size{
    //当前image的可见绘制区域
    CGRect rec=(CGRect){0.f,0.f,size};
    //创建基于位图的上下文，scale代表缩放，0代表不缩放,这里的最后一个参数为缩放比例，其实是指像素点和每个绘制逻辑点的比例，如果设置为2.0那个两个像素b代表一个像素点，所以，就是所谓的retina屏幕
    UIGraphicsBeginImageContextWithOptions(size, NO, UIScreen.mainScreen.scale);
    //在当前位图上下文添加圆角绘制路径
    CGContextAddPath(UIGraphicsGetCurrentContext(), [UIBezierPath bezierPathWithRoundedRect:rec cornerRadius:radius].CGPath);
    //当前绘制路径和原绘制路径相交的到最终裁剪绘制路径
    CGContextClip(UIGraphicsGetCurrentContext());
    //绘制
    [self drawInRect:rec];
    //取得裁剪后的image
    UIImage *image=UIGraphicsGetImageFromCurrentImageContext();
    //关闭当前位图的上下文
    UIGraphicsEndPDFContext();
    return image;
}
@end
