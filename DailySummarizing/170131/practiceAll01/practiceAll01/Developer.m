//
//  Developer.m
//  practiceAll01
//
//  Created by abyssinaong on 2017. 1. 31..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import "Developer.h"

@implementation Developer


- (void)settingSpeatialProgramSkill:(NSString *)programName
{
    
    self.speatialProgramSkill = programName;
    
}

- (NSUInteger)completeProject:(NSUInteger)num
{
    
    self.completMoney = num * 100;
    
    return self.completMoney;
}

- (NSUInteger)yearsTotalWage:(NSUInteger)salary
{
    
    [super yearsTotalWage:salary];
    
    NSUInteger totalWage = self.salary + self.completMoney;
    
    return totalWage;
}

@end
