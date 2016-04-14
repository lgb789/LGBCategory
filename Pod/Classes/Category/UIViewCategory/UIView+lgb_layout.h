//
//  UIView+lgb_layout.h
//  
//
//  Created by lgb789 on 16/4/14.
//  Copyright © 2016年 com.lgb. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (lgb_layout)

-(CGFloat)height;

-(CGFloat)width;

-(void)setHeight:(CGFloat)height;

-(void)heightEqualToView:(UIView *)view;

-(void)setWidth:(CGFloat)width;

-(void)widthEqualToView:(UIView *)view;

-(CGFloat)x;

-(CGFloat)y;

-(void)setX:(CGFloat)x;

-(void)setY:(CGFloat)y;

-(CGFloat)left;

-(CGFloat)right;

-(CGFloat)top;

-(CGFloat)bottom;

-(void)setLeft:(CGFloat)left;

-(void)setTop:(CGFloat)top;

-(CGSize)size;

-(void)setSize:(CGSize)size;

-(void)sizeEqualToView:(UIView *)view;

-(CGPoint)origin;

-(CGFloat)centerX;

-(CGFloat)centerY;

-(void)setCenterX:(CGFloat)x;

-(void)setCenterY:(CGFloat)y;

-(void)centerXEqualToView:(UIView *)view;

-(void)centerYEqualToView:(UIView *)view;

-(void)centerEqualToView:(UIView *)view;

-(void)topEqualToView:(UIView *)view;

-(void)leftEqualToView:(UIView *)view;

-(void)bottomEqualToView:(UIView *)view;

-(void)rightEqualToView:(UIView *)view;

-(void)topSpace:(CGFloat)top
       fromView:(UIView *)view;

-(void)leftSpace:(CGFloat)left
        fromView:(UIView *)view;

-(void)bottomSpace:(CGFloat)bottom
          fromView:(UIView *)view;

-(void)rightSpace:(CGFloat)right
         fromView:(UIView *)view;

@end
