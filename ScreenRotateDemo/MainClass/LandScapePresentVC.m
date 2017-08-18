//
//  LandScapePresentVC.m
//  ScreenRotateDemo
//
//  Created by chh on 2017/8/17.
//  Copyright © 2017年 chh. All rights reserved.
//

#import "LandScapePresentVC.h"

@interface LandScapePresentVC ()

@end

@implementation LandScapePresentVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    UITextView *textView = [[UITextView alloc] initWithFrame:CGRectMake(100, 150, 150, 100)];
    textView.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:textView];
    
    UIButton *backButton = [[UIButton alloc] initWithFrame:CGRectMake(10, 10, 30, 30)];
    backButton.backgroundColor = [UIColor cyanColor];
    [backButton setTitle:@"返回" forState:UIControlStateNormal];
    [backButton addTarget:self action:@selector(backButtonAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:backButton];

}

- (void)backButtonAction{
    [self dismissViewControllerAnimated:YES completion:nil];
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    
    NSNumber *orientationUnknown = [NSNumber numberWithInt:UIInterfaceOrientationUnknown];
    [[UIDevice currentDevice] setValue:orientationUnknown forKey:@"orientation"];
    
    NSNumber *orientationTarget = [NSNumber numberWithInt:UIInterfaceOrientationLandscapeRight];
    [[UIDevice currentDevice] setValue:orientationTarget forKey:@"orientation"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (BOOL)shouldAutorotate{
    return YES;
}

- (UIInterfaceOrientationMask)supportedInterfaceOrientations{
    return UIInterfaceOrientationMaskLandscapeRight;
}


@end
