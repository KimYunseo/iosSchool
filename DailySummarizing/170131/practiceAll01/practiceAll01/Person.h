//
//  Person.h
//  practiceAll01
//
//  Created by abyssinaong on 2017. 1. 31..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject


@property NSString *name;
@property NSUInteger age;
@property NSString *birthday;
@property NSString *jobName;
@property NSString *adress;
@property NSUInteger salary;
@property NSString *registerNumber;


- (instancetype)initWithRegisterNumber:(NSString *)registerNumber setName:(NSString *)name;
- (void)jobSelect:(NSString *)jobName;
- (BOOL)birthdayConfirm;

- (NSUInteger)yearsTotalWage:(NSUInteger)salary;

@end
