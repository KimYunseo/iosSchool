//
//  ViewStructure.m
//  ViewPractice01
//
//  Created by abyssinaong on 2017. 2. 4..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import "ViewStructure.h"

@implementation ViewStructure

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/




- (instancetype)initWithSetX:(CGFloat)xNum setY:(CGFloat)yNum
                    setWidth:(CGFloat)width setHeight:(CGFloat)heigth
setBorderWidth:(NSUInteger)borderWidthNum
{
    CGRect frame = CGRectMake(xNum, yNum, width, heigth);
    
    self = [super initWithFrame:frame];
    
    self.layer.borderWidth = borderWidthNum;
    self.layer.borderColor = [UIColor blackColor].CGColor;
    
    return self;
}

@end
