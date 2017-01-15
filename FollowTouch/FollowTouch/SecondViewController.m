//
//  SecondViewController.m
//  FollowTouch
//
//  Created by mac on 2017/1/3.
//  Copyright © 2017年 CYC. All rights reserved.
//

#import "SecondViewController.h"
#import "SecondView.h"

@interface SecondViewController () <SecondViewDelegate>

@property (strong, nonatomic) SecondView *secView;

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    _secView = [[SecondView alloc] initWithFrame:CGRectMake(0, 146, 375, 375)];
    _secView.backgroundColor = [UIColor blueColor];
    _secView.delegate = self;
    [self.view addSubview:_secView];
    
    
}

- (void)shouldDisMiss {

    [UIView animateWithDuration:.35
                     animations:^{
                         _secView.alpha = 0;
                     } completion:^(BOOL finished) {
                         [self dismissViewControllerAnimated:NO completion:nil];
                     }];

}

- (void)outputAlpha:(float)alpha {

    self.view.backgroundColor = [UIColor colorWithWhite:1 alpha:alpha];

}



































@end
