//
//  ToolClass.m
//  DelegatePractice02
//
//  Created by abyssinaong on 2017. 2. 6..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import "ToolClass.h"

@implementation ToolClass

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self createView];
        
    }
    return self;
}



- (void)createView{
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.backgroundColor = [UIColor blackColor];
    btn.frame =CGRectMake(0, 20, 100, 40);
    [btn setTitle:@"버튼1입니다." forState:UIControlStateNormal];
    
    [self addSubview:btn];
}

@end
