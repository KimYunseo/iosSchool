//
//  ToolClass.m
//  DelegatePractice01
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
        [self create];
        self.backgroundColor= [UIColor blackColor];
        
    }
    return self;
}

- (void)create{
 
    UIButton *btn =[UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(0, 20, 100  , 60);
    [btn setTitle:@"하하하" forState:UIControlStateNormal];
    [self addSubview:btn];
    [btn addTarget:self action:@selector(actionBtn:) forControlEvents:UIControlEventTouchUpInside];
    
}

- (void)actionBtn:(UIButton *)sender
{
    [self.delegate delegateSet:sender];
    NSLog(@"df");
    
}


@end
