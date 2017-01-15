//
//  ViewController.m
//  FollowTouch
//
//  Created by mac on 2017/1/3.
//  Copyright © 2017年 CYC. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)jump:(id)sender {

    SecondViewController *vc = [[SecondViewController alloc] init];
    [self presentViewController:vc animated:YES completion:nil];


}



@end
