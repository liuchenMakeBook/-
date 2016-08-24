//
//  LCSelectionButton.m
//  网易新闻删减版
//
//  Created by 刘晨 on 16/8/19.
//  Copyright © 2016年 刘晨. All rights reserved.
//

#import "LCSelectionButton.h"

@implementation LCSelectionButton

- (instancetype)initWithFrame:(CGRect)frame{
    
    if (self = [super initWithFrame:frame]) {
        
        
        
        [self addTarget:self
                 action:@selector(operationWithoutHidBtn)
       forControlEvents:UIControlEventTouchUpInside];
        
    }
    return self;
    
}


- (void)operationWithoutHidBtn{
    
    if (self.tag == 1)
    {
        [self changeView1toView2];
    }
    else if (self.tag == 0) {
//        self.delete_btn.hidden = NO;
//        [self addGestureRecognizer:self.gesture];
        [self changeView2toView1];
    }
    
    
}



/******************************
 
 从上方 移到 下方
 
 ******************************/
-(void)changeView1toView2
{
    [views_array removeObject:self];
    [views2 insertObject:self atIndex:0];
    views_array = views2;
    self.tag = 0;
//    self.delete_btn.hidden = YES;
//    [self removeGestureRecognizer:self.gesture];
//    self.operations(@"remove_item",self.titleLabel.text,0);
    [self animationActionFinal];
}

/******************************
 
 从下方 移到 上方
 
 ******************************/
-(void)changeView2toView1
{
    [views_array removeObject:self];
    [views1 insertObject:self atIndex:views1.count];
    views_array = views1;
    self.tag = 1;
//    self.operations(@"add_newItem",self.titleLabel.text,0);
    [self animationActionFinal];
}

/******************************
 
 计算移动物体的中点是否在上方的1区域
 
 ******************************/
- (BOOL)whetherInAreaWithArray:(NSMutableArray *)array Point:(CGPoint)point{
    int row = (array.count%4 == 0)? 4 : array.count%4;
    int column =  (int)(array.count-1)/4+1;
    if ((point.x > 0 && point.x <=BYScreenWidth &&point.y > 0 && point.y <= 45*(column-1)+20 )||
        (point.x > 0 && point.x <= (row*(20+view_width)+20 )&& point.y > 45*(column -1)+20 && point.y <= 45 * column+20))
    {
        return YES;
    }
    return NO;
}

/******************************
 
 计算上方区域的最大值
 
 ******************************/
- (unsigned long)array1MaxY{
    unsigned long y = 0;
    if(views1.count == 0){
        y = 70;
    }else {
        y = ((views1.count-1)/4+1)*45 +70;
    }
    
    return y;
}

/******************************
 
 重新排列整个 上方区域
 
 ******************************/
- (void)animationForView1
{
    for (int i = 0; i < views1.count; i++){
        if ([views1 objectAtIndex:i] != self){
            [self animationWithView:[views1 objectAtIndex:i] frame:CGRectMake(20+(20+view_width)*(i%4), 20+45*(i/4), view_width, 25)];
        }
    }
}

/******************************
 
 重新排列整个 下方区域和“更多”label
 
 ******************************/
-(void)animationForView2{
    for (int i = 0; i < views2.count; i++) {
        if ([views2 objectAtIndex:i] != self) {
            [self animationWithView:[views2 objectAtIndex:i] frame:CGRectMake(20+(20+view_width)*(i%4), [self array1MaxY]+50+45*(i/4), view_width, 25)];
        }
    }
    [self animationWithView:self.moreChanelslabel frame:CGRectMake(0,[self array1MaxY],BYScreenWidth,30)];
}


/******************************
 
 重新排列整个 上方区域、下方区域和“更多label”
 
 ******************************/
- (void)animationActionFinal
{
    for (int i = 0; i <views1.count; i++) {
        [self animationWithView:[views1 objectAtIndex:i] frame:CGRectMake(20+(20+view_width)*(i%4), 70+45*(i/4), view_width, 25)];
    }
    for (int i = 0; i < views2.count; i++) {
        [self animationWithView:[views2 objectAtIndex:i] frame:CGRectMake(20+(20+view_width)*(i%4), [self array1MaxY]+50+45*(i/4), view_width, 25)];
    }
    [self animationWithView:self.moreChanelslabel frame:CGRectMake(0,[self array1MaxY],BYScreenWidth,30)];
}

-(void)animationWithView:(UIView *)view frame:(CGRect)frame
{
    [UIView animateWithDuration:resetView_time delay:0 options:UIViewAnimationOptionLayoutSubviews animations:^{
        [view setFrame:frame];
    } completion:^(BOOL finished){}];
}


@end
