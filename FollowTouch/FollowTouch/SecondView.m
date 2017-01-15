//
//  SecondView.m
//  FollowTouch
//
//  Created by mac on 2017/1/3.
//  Copyright © 2017年 CYC. All rights reserved.
//

#import "SecondView.h"

@interface SecondView ()

@property (assign, nonatomic) CGRect rect;
@property (assign, nonatomic) float offest;

@end

@implementation SecondView

- (instancetype)initWithFrame:(CGRect)frame {

    self = [super initWithFrame:frame];
    if (self != nil) {
        _rect = self.frame;
    }
    return self;
}

- (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {

    UITouch *touch = touches.anyObject;
    CGPoint locationPoint = [touch locationInView:self];
    CGPoint previousPoint = [touch previousLocationInView:self];
    CGRect rect = self.frame;
    float y = rect.origin.y + (locationPoint.y - previousPoint.y);
    if (y >= _rect.origin.y) {
        self.frame = CGRectMake(0,
                                rect.origin.y + (locationPoint.y - previousPoint.y),
                                rect.size.width, rect.size.height);
    } else {
        self.frame = CGRectMake(0,
                                _rect.origin.y,
                                rect.size.width, rect.size.height);
    }
    
    // 位移偏差
    _offest = rect.origin.y - _rect.origin.y;
    self.transform = CGAffineTransformMakeScale(1 - _offest*(0.6/_rect.size.height/2),
                                                1 - _offest*(0.6/_rect.size.height/2));
    
    // 传输不透明度
    [_delegate outputAlpha:(1 - _offest*(0.6/_rect.size.height/2))];

}

- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {

    if (_offest > _rect.size.height*0.9) {
        [_delegate shouldDisMiss];
    } else {
        [UIView animateWithDuration:.35
                         animations:^{
                             self.frame = _rect;
                             self.transform = CGAffineTransformIdentity;
                         }];
    }

}


@end
