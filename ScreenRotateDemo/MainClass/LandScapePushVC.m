//
//  LandScapePushVC.m
//  ScreenRotateDemo
//
//  Created by chh on 2017/8/17.
//  Copyright © 2017年 chh. All rights reserved.
//

#import "LandScapePushVC.h"
#import "AppDelegate.h"

@interface LandScapePushVC ()

@end

@implementation LandScapePushVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    UITextView *textView = [[UITextView alloc] initWithFrame:CGRectMake(100, 150, 150, 100)];
    textView.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:textView];
    
    
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
//    [self.navigationController setNavigationBarHidden:YES animated:animated];

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
