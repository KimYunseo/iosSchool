//
//  CustomView.m
//  ScreenTransitionPractice03
//
//  Created by abyssinaong on 2017. 2. 20..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import "CustomView.h"

@implementation CustomView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self creatView];
    }
    return self;
}

- (void)creatView{
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(self.frame.size.width/3, 100, self.frame.size.width/3, 50);
    [btn setTitle:@"Click!!" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    btn.backgroundColor = [UIColor yellowColor];
    [btn addTarget:self action:@selector(buttonAction:) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:btn];
    
    
}

- (void)buttonAction:(UIButton *)sender{
    
    [self.delegate willTouchUpInside];
}




@end
