//
//  WSTitleButton.m
//  网易彩票2016
//
//  Created by user on 2016/12/15.
//  Copyright © 2016年 王韦翔. All rights reserved.
//

#import "WSTitleButton.h"

@implementation WSTitleButton

//交换button内部图片和文字的左右顺序
- (void)layoutSubviews {
    [super layoutSubviews];
    
    // 获得按钮的宽度
    CGFloat buttonW = self.frame.size.width;
    CGFloat buttonH = self.frame.size.height;
    // 获得标题文字的宽度
    CGFloat titleW = self.titleLabel.frame.size.width;
    // 获得图片的宽高
    CGFloat imageW = self.imageView.image.size.width;
    CGFloat imageH = self.imageView.image.size.height;
    // 设置按钮和图片的间距
    CGFloat margin = 3;
    
    // 计算按钮的x值
    CGFloat titleX = (buttonW - titleW - imageW - margin) * 0.5;
    // 设置标题的frame
    self.titleLabel.frame = CGRectMake(titleX, 0, titleW, buttonH);
    
    // 设置图片的frame
    CGFloat imageY = (buttonH - imageH) * 0.5;
    self.imageView.frame = CGRectMake(CGRectGetMaxX(self.titleLabel.frame) + margin, imageY, imageW, imageH);
    
}



@end
