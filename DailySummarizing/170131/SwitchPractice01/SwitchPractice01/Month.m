//
//  Month.m
//  SwitchPractice01
//
//  Created by abyssinaong on 2017. 1. 31..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import "Month.h"

@implementation Month

- (NSInteger)lastdayMonth:(NSInteger)month
{
    
    self.month  = month;
    NSInteger monthNumber = 0;
    NSInteger lastDay = 0;
    //31일
    
    if (month == 1 || month == 3 || month == 5 || month == 7 || month == 8 || month == 10 || month == 12)
    {
        
        monthNumber = 1;
        
    } else if (month == 2) {
        
        monthNumber = 2;
        
    } else {
        
        monthNumber = 3;
    }
    
    switch (monthNumber) {
        case 1:
            lastDay = 31;
            return lastDay;
            break;
            
        case 2:
            lastDay = 28;
            return lastDay;
            break;
            
        case 3:
            lastDay = 30;
            return lastDay;
            break;
            
        default:
            return lastDay;
            break;
    }
    
    
}

@end
