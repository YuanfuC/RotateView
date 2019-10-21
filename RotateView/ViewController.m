//
//  ViewController.m
//  RotateView
//
//  Created by ChenYuanfu on 2019/10/21.
//  Copyright © 2019 ChenYuanfu. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"

@interface ViewController ()
@property(nonatomic) BOOL rotate;
@property(nonatomic, weak) UITextView *textView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UITextView *text = [[UITextView alloc] init];
    text.backgroundColor = [UIColor orangeColor];
    text.text = @"VIEW";
    
    text.frame = CGRectMake(100, 100, 100, 60);
    [self.view addSubview:text];
    self.rotate = YES;
    self.textView = text;
    // Do any additional setup after loading the view.
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    self.rotate = !self.rotate;
}

- (void)setRotate:(BOOL)rotate {
    _rotate = rotate;

    if (rotate) {
        self.textView.text = @"Portrait";
        [self setInterfaceOrientation:UIDeviceOrientationPortrait];
    } else {
        self.textView.text = @"Landscape";
        [self setInterfaceOrientation:UIDeviceOrientationLandscapeLeft];
    }

}

- (BOOL)shouldAutorotate {
    return YES;
}

-(UIInterfaceOrientationMask)supportedInterfaceOrientations {
    NSLog(@"%s",__func__);
    if (self.rotate) {
        return UIInterfaceOrientationMaskPortrait;
    } else {
        return UIInterfaceOrientationMaskLandscapeLeft;
    }
}

- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation {
    NSLog(@"%s",__func__);
    if (self.rotate) {
        return UIInterfaceOrientationPortrait;
    } else {
        return UIInterfaceOrientationLandscapeLeft;
    }
}

- (void)setInterfaceOrientation:(UIDeviceOrientation)orientation {
    if ([[UIDevice currentDevice]   respondsToSelector:@selector(setOrientation:)]) {
        [[UIDevice currentDevice] setValue:[NSNumber numberWithInteger:UIInterfaceOrientationUnknown]
                                    forKey:@"orientation"];
        [[UIDevice currentDevice] setValue:[NSNumber numberWithInteger:orientation]
                                    forKey:@"orientation"];
    }
}

@end
