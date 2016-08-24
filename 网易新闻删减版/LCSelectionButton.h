//
//  LCSelectionButton.h
//  网易新闻删减版
//
//  Created by 刘晨 on 16/8/19.
//  Copyright © 2016年 刘晨. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^operateBlock)(NSString * , NSString * , int);

@interface LCSelectionButton : UIButton{
    @public
    NSMutableArray *views_array;
    NSMutableArray *views1;
    NSMutableArray *views2;
}
@property (nonatomic,strong) UIView   *moreChanelslabel;
//删除的button
//@property (nonatomic,strong) UIButton *delete_btn;
//@property (nonatomic,strong) UIButton *hid_btn;

//block回调
@property (nonatomic,copy)   operateBlock operations;

//记录是否是第一个
//@property (nonatomic,assign) BOOL isEqualFirst;
//@property (nonatomic,strong) UIPanGestureRecognizer *gesture;
//@property (nonatomic,strong) UILongPressGestureRecognizer *longGesture;
// 手势方法
//-(void)makeSelectionViewWithTitle:(NSString *)title;




@end
