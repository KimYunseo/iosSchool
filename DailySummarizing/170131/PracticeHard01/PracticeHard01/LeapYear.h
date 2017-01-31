//
//  LeapYear.h
//  PracticeHard01
//
//  Created by abyssinaong on 2017. 1. 31..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LeapYear : NSObject

+ (BOOL)isLeapYear:(NSUInteger)year;

+ (NSUInteger)lastDayOfMonth:(NSUInteger)month setYear:(NSUInteger)year;

+ (NSUInteger)firstDay:(NSString *)fDay lastDay:(NSString *)lDay;
@end
