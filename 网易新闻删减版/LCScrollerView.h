//
//  LCScrollerView.h
//  网易新闻删减版
//
//  Created by 刘晨 on 16/8/20.
//  Copyright © 2016年 刘晨. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LCScrollerView : UIScrollView

-(void)makeMainContent;
@property (nonatomic,strong) NSMutableArray *views1;
@property (nonatomic,strong) NSMutableArray *views2;



@end
