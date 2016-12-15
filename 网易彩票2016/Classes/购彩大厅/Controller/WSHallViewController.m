//
//  WSHallViewController.m
//  网易彩票2016
//
//  Created by user on 2016/12/15.
//  Copyright © 2016年 王韦翔. All rights reserved.
//

#import "WSHallViewController.h"

@interface WSHallViewController ()

@end

@implementation WSHallViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 创建按钮
    UIButton *leftNavBarBtn = [[UIButton alloc] init];
    // 背景图片
    [leftNavBarBtn setBackgroundImage:[UIImage imageNamed:@"CS50_activity_image"] forState:UIControlStateNormal];
    // frame
    leftNavBarBtn.frame = CGRectMake(0, 0, leftNavBarBtn.currentBackgroundImage.size.width, leftNavBarBtn.currentBackgroundImage.size.height);
    // 设置导航栏左边item
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:leftNavBarBtn];
}

@end
