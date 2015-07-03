//
//  ViewController.m
//  VFLAutoLayout
//
//  Created by xuyazhong on 15/7/3.
//  Copyright (c) 2015年 xuyazhong. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *button=[[UIButton alloc]init];
    [button setTitle:@"按钮1" forState:UIControlStateNormal];
    button.translatesAutoresizingMaskIntoConstraints=NO;
    [button setBackgroundColor:[UIColor redColor]];
    [self.view addSubview:button];
    NSArray *constraints1=[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-50-[button]-50-|"
                                                                  options:0
                                                                  metrics:nil
                                                                    views:NSDictionaryOfVariableBindings(button)];
    
    NSArray *constraints2=[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-64-[button(==30)]"
                                                                  options:0
                                                                  metrics:nil
                                                                    views:NSDictionaryOfVariableBindings(button)];
    
    [self.view addConstraints:constraints1];
    [self.view addConstraints:constraints2];
    
    
    UIButton *button1=[[UIButton alloc]init];
    button1.translatesAutoresizingMaskIntoConstraints=NO;
    [button1 setTitle:@"按钮2" forState:UIControlStateNormal];
    [button1 setBackgroundColor:[UIColor orangeColor]];
    [self.view addSubview:button1];
    
    NSArray *constraints3=[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-[button1]-|"
                                                                  options:0
                                                                  metrics:nil
                                                                    views:NSDictionaryOfVariableBindings(button1)];
    
    NSArray *constraints4=[NSLayoutConstraint constraintsWithVisualFormat:@"V:[button]-100-[button1(==30)]"
                                                                  options:0
                                                                  metrics:nil
                                                                    views:NSDictionaryOfVariableBindings(button1,button)];
    
    [self.view addConstraints:constraints3];
    [self.view addConstraints:constraints4];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
