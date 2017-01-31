//
//  PositiveValue.m
//  PracticeEasy01
//
//  Created by abyssinaong on 2017. 1. 31..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import "PositiveValue.h"

@implementation PositiveValue


+ (NSUInteger)calcuOP:(NSString *)sign setNum1:(NSUInteger)num1 setNum2:(NSUInteger)num2
{
    NSUInteger calNum1 = 0;
    NSUInteger calNum2 = 0;
    NSUInteger signNumber =0;
    NSUInteger resultNum =0;
    
    if (num1 < num2)
    {
        
        calNum1 = num2;
        calNum2 = num1;
        
    } else
    {
        
        calNum1 = num1;
        calNum2 = num2;
        
    }
    
    
    
    if ([sign isEqualToString:@"+"])
    {
        signNumber = 1;
        
    } else if ([sign isEqualToString:@"-"])
    {
        signNumber = 2;
    } else
    {
        NSLog(@"잘못 입력하였습니다.");
    }
    
    switch (signNumber) {
        case 1:
            
            resultNum = calNum1 + calNum2;
            
            return resultNum;
            break;
            
        case 2:
            
            resultNum = calNum1 - calNum2;
            
            return resultNum;
            break;
            
        default:
            return resultNum;
            break;
    }
    
    
}


@end
