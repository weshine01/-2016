//
//  WSTabBarController.m
//  网易彩票2016
//
//  Created by user on 2016/12/14.
//  Copyright © 2016年 王韦翔. All rights reserved.
//

#import "WSTabBarController.h"
#import "WSTabBar.h"

@interface WSTabBarController ()<WSTabBarDelegate>

@end

@implementation WSTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];

    // 自定义tabBar
    WSTabBar *tabBar = [[WSTabBar alloc] init];
    tabBar.frame = self.tabBar.bounds;
    
    // 添加到原tabBar里面
    [self.tabBar addSubview:tabBar];
    
    // 设置代理
    tabBar.delegate = self;
    
    // 根据子控制器个数为tabBar添加按钮
    for (int i = 0; i<self.viewControllers.count; i++) {
        NSString *normalImageName = [NSString stringWithFormat:@"TabBar%d",i+1];
        NSString *selectedImageName = [NSString stringWithFormat:@"TabBar%dSel",i+1];
        [tabBar addTabBarButtonWithNormalImage:normalImageName selectedImage:selectedImageName];
    }
    
    
    
    
    
}


#pragma mark - WSTabBarDelegate 代理方法
-(void)tabBar:(WSTabBar *)tabBar didSelectSection:(NSInteger)section{
    
    // 切换控制器
    self.selectedViewController = self.viewControllers[section];

}

@end
