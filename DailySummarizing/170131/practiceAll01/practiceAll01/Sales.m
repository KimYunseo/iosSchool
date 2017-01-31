//
//  Sales.m
//  practiceAll01
//
//  Created by abyssinaong on 2017. 1. 31..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import "Sales.h"

@implementation Sales

- (NSUInteger)succesSalseMoney:(NSUInteger)money
{
    
    self.incentive = money * 0.1 + self.incentive;
    
    return money;
    
}

- (NSUInteger)yearsTotalWage:(NSUInteger)salary
{
    
    [super yearsTotalWage:salary];
    
    NSUInteger totalWage = self.salary + self.incentive;
    
    return totalWage;
    
}




@end
