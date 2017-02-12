//
//  ButtonClass.m
//  RecursionTest01
//
//  Created by abyssinaong on 2017. 2. 10..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import "ButtonClass.h"

@implementation ButtonClass


- (UIButton *)createBtn
{
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.layer.borderColor = [UIColor blackColor].CGColor;
    [btn setTitle:@"계산" forState:UIControlStateHighlighted];
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor redColor] forState:UIControlStateHighlighted];

    return btn;
}

//- (instancetype)initWithFrame:(CGRect)frame
//{
//    self = [super initWithFrame:frame];
//    if (self) {
//        <#statements#>
//    }
//    return self;
//}

@end
