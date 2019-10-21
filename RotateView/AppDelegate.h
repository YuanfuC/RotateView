//
//  AppDelegate.h
//  RotateView
//
//  Created by ChenYuanfu on 2019/10/21.
//  Copyright © 2019 ChenYuanfu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property(nonatomic, assign) BOOL isForcePortrait;
@property(nonatomic, assign) BOOL isForceLandscape;

@end

