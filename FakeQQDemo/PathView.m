//
//  PathView.m
//  FakeQQDemo
//
//  Created by 李正国 on 2019/4/29.
//  Copyright © 2019 李正国. All rights reserved.
//
#define DEGREES_TO_RADIANS(degree) ((M_PI*degree)/180)
#import "PathView.h"

@implementation PathView
-(void)drawRect:(CGRect)rect{
    
    [self setpath1];
    [self setNeedsLayout];
}
-(void)setpath1{
   
    UIBezierPath *path1=[UIBezierPath bezierPath];
    [path1 moveToPoint:CGPointMake(250, 0)];
    [path1 addLineToPoint:CGPointMake(250, 50)];
    [path1 addLineToPoint:CGPointMake(300, 50)];
    [path1 closePath];
    [path1 moveToPoint:CGPointMake(250, 50)];
    [path1 addLineToPoint:CGPointMake(300, 0)];
   /*CGAffineTransform rotate=CGAffineTransformMakeRotation(DEGREES_TO_RADIANS(45));
    [path1 applyTransform:rotate];
    */
  // CGAffineTransform rotateObject=CGAffineTransformMakeTranslation(275, 125);
    CGAffineTransform rotateObject1=CGAffineTransformMakeTranslation(275, 25);
    rotateObject1=CGAffineTransformRotate(rotateObject1, DEGREES_TO_RADIANS(45));
    rotateObject1=CGAffineTransformTranslate(rotateObject1, -275, -25);
   [path1 applyTransform:rotateObject1];
    path1.lineWidth=2;
    [[UIColor greenColor]setStroke];
    [path1 stroke];
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
