//
//  HomeViewController.m
//  ScreenRotateDemo
//
//  Created by chh on 2017/8/17.
//  Copyright © 2017年 chh. All rights reserved.
//

#import "HomeViewController.h"
#import "LandScapePushVC.h"
#import "LandScapePresentVC.h"
#import "AppDelegate.h"

@interface HomeViewController ()

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton *psuhButton = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 150, 100)];
    psuhButton.backgroundColor = [UIColor cyanColor];
    [psuhButton setTitle:@"横屏push" forState:UIControlStateNormal];
    [psuhButton addTarget:self action:@selector(psuhButtonAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:psuhButton];
    
    UIButton *presentButton = [[UIButton alloc] initWithFrame:CGRectMake(100, 220, 150, 100)];
    presentButton.backgroundColor = [UIColor greenColor];
    [presentButton setTitle:@"横屏present" forState:UIControlStateNormal];
    [presentButton addTarget:self action:@selector(presentButtonAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:presentButton];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
   
}

- (void)psuhButtonAction{
    
    LandScapePushVC *vc = [[LandScapePushVC alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)presentButtonAction{
    
    LandScapePresentVC *vc = [[LandScapePresentVC alloc] init];
    [self presentViewController:vc animated:YES completion:nil];
    
}


@end
