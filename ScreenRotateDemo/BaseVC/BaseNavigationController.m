//
//  BaseNavigationController.m
//  TestDemo1
//
//  Created by caohouhong on 17/3/15.
//  Copyright © 2017年 caohouhong. All rights reserved.
//

#import "BaseNavigationController.h"

@interface BaseNavigationController ()

@end

@implementation BaseNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //设置了之后自动下沉64
    self.navigationBar.translucent = NO;
    //改变左右Item的颜色
    self.navigationBar.tintColor = [UIColor whiteColor];

    //改变title的字体样式
    NSDictionary *textAttributes = @{NSForegroundColorAttributeName : [UIColor whiteColor]};
    [self.navigationBar setTitleTextAttributes:textAttributes];
    //改变navBar的背景颜色
    [self.navigationBar setBarTintColor:[UIColor blueColor]];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}
- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    if ([self.viewControllers count] > 0){
        viewController.hidesBottomBarWhenPushed = YES;
        
        UIBarButtonItem *backItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"nav_back"] style:UIBarButtonItemStylePlain target:self action:@selector(backAction)];
        viewController.navigationItem.leftBarButtonItem = backItem;
    }
    //一定要写在最后，要不然无效
    [super pushViewController:viewController animated:animated];
}

- (void)backAction{
    [self popViewControllerAnimated:YES];
}
-(BOOL)shouldAutorotate{
    return self.topViewController.shouldAutorotate;
}
//支持的方向
- (UIInterfaceOrientationMask)supportedInterfaceOrientations {
    return self.topViewController.supportedInterfaceOrientations;
}

@end
