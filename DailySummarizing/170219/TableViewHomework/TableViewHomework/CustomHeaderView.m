//
//  CustomHeaderView.m
//  TableViewHomework
//
//  Created by abyssinaong on 2017. 2. 20..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import "CustomHeaderView.h"

@interface CustomHeaderView()

@property (weak) UILabel *upperLB;
@property (weak) UILabel *downLB;

@end

@implementation CustomHeaderView

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        [self creatView];
        [self textSetting];
        
    }
    return self;
}

- (void)creatView{
    
    UILabel *upperLB = [[UILabel alloc]init];
    [self addSubview:upperLB];
    self.upperLB = upperLB;
    
    UILabel *downLB = [[UILabel alloc]init];
    [self addSubview:downLB];
    self.downLB = downLB;
    
}

- (void)layoutSubviews{
    [self frameSetting];
}

- (void)frameSetting{
    
    self.upperLB.frame = CGRectMake(0, self.frame.size.height/3, self.frame.size.width, 20);
    self.upperLB.font = [UIFont boldSystemFontOfSize:20.0];
    self.upperLB.textAlignment = NSTextAlignmentCenter;
    self.downLB.frame = CGRectMake(0, self.frame.size.height/3+30, self.frame.size.width, 15);
    self.downLB.font = [UIFont systemFontOfSize:15.0];
    self.downLB.textAlignment = NSTextAlignmentCenter;
    
}

- (void)textSetting{
    
    self.upperLB.text = @"STAFF PICKS";
    self.upperLB.textColor = [UIColor blackColor];
    
    self.downLB.text = @"Here's some of the stuff we reallu like";
    self.downLB.textColor = [UIColor grayColor];
    
}

@end
