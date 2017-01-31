//
//  Round.m
//  PracticeEasy01
//
//  Created by abyssinaong on 2017. 1. 31..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import "Round.h"

@implementation Round

+ (CGFloat)roundNum:(CGFloat)num
{
    
    CGFloat number =0.00;
    number = round(num * 100);
    
    return number/100;
}


@end
