//
//  AbsoluteValue.m
//  PracticeEasy01
//
//  Created by abyssinaong on 2017. 1. 31..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import "AbsoluteValue.h"

@implementation AbsoluteValue

+ (NSInteger)absoluteNum:(NSInteger)num
{
    
    if (num <= 0)
    {
        
        NSUInteger absNum = -(num);
        return absNum;
        
    } else
    {
        
        NSUInteger absNum =  num;
        return absNum;
        
    }
    
}


@end
