//
//  ViewController.m
//  MTButtonEdgeInsetsDemo
//
//  Created by zhourongqing on 16/4/12.
//  Copyright © 2016年 mtry. All rights reserved.
//

#import "ViewController.h"
#import "UIButton+MTEdgeInsets.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    CGSize buttonSize = CGSizeMake(150, 80);
    UIButton *button;
    button = [self newButtonForFrame:CGRectMake((CGRectGetWidth(self.view.frame) - buttonSize.width)/2, 100, buttonSize.width, buttonSize.height)];
    [button centerImageLeftAndLabelRightSpacing:10];
    [self.view addSubview:button];
    
    button = [self newButtonForFrame:CGRectMake(CGRectGetMinX(button.frame), CGRectGetMaxY(button.frame) + 10, buttonSize.width, buttonSize.height)];
    [button centerLabelLeftAndImageRightSpacing:10];
    [self.view addSubview:button];
    
    button = [self newButtonForFrame:CGRectMake(CGRectGetMinX(button.frame), CGRectGetMaxY(button.frame) + 10, buttonSize.width, buttonSize.height)];
    [button centerImageTopAndLabelBottomSpacing:10];
    [self.view addSubview:button];
    
    button = [self newButtonForFrame:CGRectMake(CGRectGetMinX(button.frame), CGRectGetMaxY(button.frame) + 10, buttonSize.width, buttonSize.height)];
    [button centerLabelTopAndImageBottomSpacing:10];
    [self.view addSubview:button];
}

- (UIButton *)newButtonForFrame:(CGRect)frame
{
    UIButton *button = [[UIButton alloc] initWithFrame:frame];
    button.backgroundColor = [UIColor brownColor];
    [button setTitle:@"button" forState:UIControlStateNormal];
    [button setImage:[UIImage imageNamed:@"image"] forState:UIControlStateNormal];
    return button;
}

@end
