//
//  WSDocumentaryController.m
//  网易彩票2016
//
//  Created by user on 2016/12/15.
//  Copyright © 2016年 王韦翔. All rights reserved.
//

#import "WSDocumentaryController.h"
#import "WSTitleButton.h"
@interface WSDocumentaryController ()
@property(nonatomic,strong)UIView *popView;

@end

@implementation WSDocumentaryController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (IBAction)titleBtnClick:(WSTitleButton *)titleBtn {
    [UIView animateWithDuration:0.5 animations:^{
        if (CGAffineTransformEqualToTransform(titleBtn.imageView.transform, CGAffineTransformIdentity)) {
            titleBtn.imageView.transform = CGAffineTransformMakeRotation(M_PI);
        } else {
            // 清空transform
            titleBtn.imageView.transform = CGAffineTransformIdentity;
        }
    }];
    
    // 添加菜单 Descendant:子孙
    if ([self.popView isDescendantOfView:self.view]) {// 已经添加到控制器的view上面
        [self.popView removeFromSuperview];
    } else {
        [self.view addSubview:self.popView];
    }

}

#pragma mark - 懒加载
- (UIView *)popView {
    if (_popView == nil) {
        _popView = [[UIView alloc] initWithFrame:CGRectMake(0,0, self.view.frame.size.width, 200)];
        _popView.backgroundColor = [UIColor blueColor];
        _popView.tag = 100;
    }
    return _popView;
}




@end
