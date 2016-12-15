//
//  WSTabBar.h
//  网易彩票2016
//
//  Created by user on 2016/12/14.
//  Copyright © 2016年 王韦翔. All rights reserved.
//

#import <UIKit/UIKit.h>


@class WSTabBar;
@protocol WSTabBarDelegate <NSObject>
@optional
-(void)tabBar:(WSTabBar *)tabBar didSelectSection:(NSInteger)section;
@end

#warning    WSTabBar是继承自UIView，如果继承自UITabBar，则tabBar自己本身就包含有子控件
@interface WSTabBar : UIView

// 为tabBar添加按钮
- (void)addTabBarButtonWithNormalImage:(NSString *)normalImage selectedImage:(NSString *)selectedImage;

@property(nonatomic,weak)id<WSTabBarDelegate> delegate;

@end
