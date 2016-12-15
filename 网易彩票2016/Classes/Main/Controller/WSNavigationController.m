//
//  WSNavigationController.m
//  网易彩票2016
//
//  Created by user on 2016/12/15.
//  Copyright © 2016年 王韦翔. All rights reserved.
//

#import "WSNavigationController.h"

@interface WSNavigationController ()

@end

@implementation WSNavigationController


+(void)initialize{
    
    // 设置导航条的背景
    // 获得全局主题导航条
    UINavigationBar *navBar = [UINavigationBar appearance];
    // 设置返回按钮箭头的颜色
    navBar.tintColor = [UIColor whiteColor];
    
    // 设置背景图片
    // UIBarMetricsDefault,横竖屏都能显示
    // UIBarMetricsCompact, 横屏才显示
    [navBar setBackgroundImage:[UIImage imageNamed:@"NavBar64"] forBarMetrics:UIBarMetricsDefault];
    
    
    // 设置标题属性
    NSMutableDictionary *attributes = [NSMutableDictionary dictionary];
    attributes[NSForegroundColorAttributeName] = [UIColor whiteColor];
    attributes[NSFontAttributeName] = WSFontSize(20);
    [navBar setTitleTextAttributes:attributes];
    
    // 获得全局的UIBarButtonItem
    UIBarButtonItem *item = [UIBarButtonItem appearance];
    
    NSMutableDictionary *itemAttributes = [NSMutableDictionary dictionary];
    itemAttributes[NSForegroundColorAttributeName] = [UIColor whiteColor];
    itemAttributes[NSFontAttributeName] = WSFontSize(14);
    [navBar setTitleTextAttributes:attributes];
    
    [item setTitleTextAttributes:itemAttributes forState:UIControlStateNormal];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}



@end
