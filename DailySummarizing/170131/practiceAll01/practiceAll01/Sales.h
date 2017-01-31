//
//  Sales.h
//  practiceAll01
//
//  Created by abyssinaong on 2017. 1. 31..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

@interface Sales : Person

@property NSUInteger incentive;

// 영업성공 규모당 10%
- (NSUInteger)succesSalseMoney:(NSUInteger)money;

- (NSUInteger)yearsTotalWage:(NSUInteger)salary;

@end
