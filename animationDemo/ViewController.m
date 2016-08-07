//
//  ViewController.m
//  animationDemo
//
//  Created by shuzhenguo on 16/6/30.
//  Copyright © 2016年 shuzhenguo. All rights reserved.
//

#import "ViewController.h"
#import "CALayer+PauseAimate.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
//    self.homeImage.layer.cornerRadius = self.homeImage.frame.size.width/2;
    self.homeImage.layer.masksToBounds = YES;
    self.homeImage.layer.borderWidth = 0;
    self.homeImage.layer.borderColor = [UIColor colorWithRed:27/255.0 green:27/255.0 blue:27/255.0 alpha:1.0].CGColor;
    self.homeImage.image = [UIImage imageNamed:@"dzq.jpg"];

    [self addIconViewAnimate];
}
- (void)addIconViewAnimate
{
    
    // 1.创建基本动画
    CABasicAnimation *rotationAnim = [CABasicAnimation animationWithKeyPath:@"transform.rotation.z"];
    
    // 2.给动画设置一些属性
    rotationAnim.fromValue = @(0);
    rotationAnim.toValue = @(M_PI * 2);
    rotationAnim.repeatCount = NSIntegerMax;
    rotationAnim.duration = 30;
    
    // 3.将动画添加到iconView的layer上面
    [self.homeImage.layer addAnimation:rotationAnim forKey:nil];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)Click:(id)sender {
    
    [self.homeImage.layer pauseAnimate];
    
    

}

- (IBAction)Click1:(id)sender {
    
    [self.homeImage.layer resumeAnimate];

}
@end
