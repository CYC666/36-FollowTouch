//
//  SecondView.h
//  FollowTouch
//
//  Created by mac on 2017/1/3.
//  Copyright © 2017年 CYC. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol SecondViewDelegate <NSObject>

@optional
- (void)shouldDisMiss;
- (void)outputAlpha:(float)alpha;

@end

@interface SecondView : UIView

@property (weak, nonatomic) id<SecondViewDelegate> delegate;

@end
