//
//  WSTabBar.m
//  网易彩票2016
//
//  Created by user on 2016/12/14.
//  Copyright © 2016年 王韦翔. All rights reserved.
//

#import "WSTabBar.h"
#import "WSTabBarButton.h"

@interface WSTabBar ()
// 记录选中的按钮
@property(nonatomic,weak) UIButton *selectedBtn;

@end

@implementation WSTabBar

// 为tabBar添加按钮
- (void)addTabBarButtonWithNormalImage:(NSString *)normalImage selectedImage:(NSString *)selectedImage{
    WSTabBarButton *tabBarButton = [[WSTabBarButton alloc] init];
    
    // 设置普通状态下显示的图片
    [tabBarButton setBackgroundImage:[UIImage imageNamed:normalImage] forState:UIControlStateNormal];
    // 设置选中状态下显示的图片
    [tabBarButton setBackgroundImage:[UIImage imageNamed:selectedImage] forState:UIControlStateSelected];
    
    // 监听按钮的点击
#warning 按钮的点击响应事件UIControlEventTouchDown
    [tabBarButton addTarget:self action:@selector(tabBarButtonClick:) forControlEvents:UIControlEventTouchDown];
    
    // 添加tag，切换控制器时使用
    tabBarButton.tag = self.subviews.count;
    
    // 将按钮添加到tabBar上面
    [self addSubview:tabBarButton];
    
    // 默认选中第一个
    if (self.subviews.count == 1) {
        [self tabBarButtonClick:tabBarButton];
    }
    
}

- (void)tabBarButtonClick:(UIButton *)tabBarButton{
    _selectedBtn.selected = NO;
    _selectedBtn = tabBarButton;
    tabBarButton.selected = YES;
    
    // 通知代理切换控制器
    if ([self.delegate respondsToSelector:@selector(tabBar:didSelectSection:)]) {
        [self.delegate tabBar:self didSelectSection:tabBarButton.tag];
    }
}

-(void)layoutSubviews{
    [super layoutSubviews];
    
    NSInteger count = self.subviews.count;
    
    // 计算按钮的尺寸
    CGFloat buttonW = self.frame.size.width / count;
    CGFloat buttonH = self.frame.size.height;
    
    for (NSInteger index = 0; index < count; index ++) {
        // 根据索引获得按钮
        UIButton *tabBarButton = self.subviews[index];
        
        // 计算按钮的x值
        CGFloat buttonX = buttonW * index;
        CGFloat buttonY = 0;
        // 设置frame
        tabBarButton.frame = CGRectMake(buttonX, buttonY, buttonW, buttonH);
        
    }
    

    
}

@end
