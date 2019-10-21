//
//  HONavigationController.m
//  Hover
//
//  Created by ChenYuanfu on 2019/10/21.
//  Copyright © 2019年 zerozero. All rights reserved.
//
#import "HONavigationController.h"

@interface HONavigationController ()
@property (nonatomic, assign) UIInterfaceOrientationMask interfaceOrientationMask;
@end

@implementation HONavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
}

#pragma mark - Orientation

- (BOOL)shouldAutorotate {
    return [self.viewControllers.lastObject shouldAutorotate];
}

- (UIInterfaceOrientationMask)supportedInterfaceOrientations {
    return [[self.viewControllers lastObject] supportedInterfaceOrientations];
}

- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation {
    return [[self.viewControllers lastObject] preferredInterfaceOrientationForPresentation];
}

- (UIStatusBarStyle)preferredStatusBarStyle {
    UIStatusBarStyle style = self.topViewController.preferredStatusBarStyle;
    return style;
}

@end
