//
//  ViewController.m
//  网易新闻删减版
//
//  Created by 刘晨 on 16/8/19.
//  Copyright © 2016年 刘晨. All rights reserved.
//

#import "ViewController.h"
#import "LCScrollerView.h"
#import "SecondViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeSystem];
    
    btn.frame = CGRectMake(0, 0, 200, 200);
    
    btn.center = self.view.center;
    
    btn.backgroundColor = [UIColor magentaColor];
    
    [btn setTitle:@"点我呀" forState:UIControlStateNormal];
    
    [btn addTarget:self action:@selector(didclickButton:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:btn];
    
}

//btn监听事件
- (void)didclickButton:(UIButton *)btn{
    
    SecondViewController *second = [[SecondViewController alloc]init];
    
    [self presentViewController:second animated:YES completion:nil];
    
    
}














@end
