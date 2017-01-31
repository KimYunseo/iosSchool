//
//  Developer.h
//  practiceAll01
//
//  Created by abyssinaong on 2017. 1. 31..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"


@interface Developer : Person


@property NSString *speatialProgramSkill;
@property NSUInteger completMoney;

- (void)settingSpeatialProgramSkill:(NSString *)programName;

// 프로젝트 성공수당
- (NSUInteger)completeProject:(NSUInteger)num;

- (NSUInteger)yearsTotalWage:(NSUInteger)salary;

@end
