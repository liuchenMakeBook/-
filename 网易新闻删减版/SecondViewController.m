//
//  SecondViewController.m
//  网易新闻删减版
//
//  Created by 刘晨 on 16/8/20.
//  Copyright © 2016年 刘晨. All rights reserved.
//

#import "SecondViewController.h"
#import "LCScrollerView.h"
@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    LCScrollerView *scro = [[LCScrollerView alloc]initWithFrame:CGRectMake(0, 0, BYScreenWidth, BYScreenHeight)];
    
    [self.view addSubview:scro];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
