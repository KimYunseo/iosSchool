//
//  CustomView.m
//  SceenTransition02
//
//  Created by abyssinaong on 2017. 2. 20..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import "CustomView.h"

@interface CustomView()

@property UIButton *bTn;

@end

@implementation CustomView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        [self createBtn];
        
    }
    return self;
}


- (void)createBtn{
    
    UIButton *bTn = [UIButton buttonWithType:UIButtonTypeCustom];
    [bTn setTitle:@"눌러" forState:UIControlStateNormal];
    [bTn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [bTn addTarget:self action:@selector(onButton:) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:bTn];
    bTn.frame = CGRectMake(100, 100, 200, 50);
    bTn.backgroundColor = [UIColor yellowColor];
    self.bTn = bTn;
        
}

- (void)onButton:(UIButton *)sender {
    
    [self.delegate willTouchButton];
}


//- (void)layoutSubviews{
//    
//    self.bTn.frame = CGRectMake(100, 100, 200, 50);
//    
//}



@end
