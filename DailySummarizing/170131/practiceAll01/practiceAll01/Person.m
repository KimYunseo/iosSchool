//
//  Person.m
//  practiceAll01
//
//  Created by abyssinaong on 2017. 1. 31..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import "Person.h"

@implementation Person


- (instancetype)initWithRegisterNumber:(NSString *)registerNumber setName:(NSString *)name
{
    self = [super init];
    
    if (self)
    {
        self.registerNumber = registerNumber;
        self.name = name;
    }
    
    return self;
}


- (void)jobSelect:(NSString *)jobName
{
    
    self.jobName = jobName;
    NSLog(@"직업명 %@(으)로 등록 되었습니다.", self.name);
    
}

- (BOOL)birthdayConfirm
{
    
    NSString *today = @"2017/01/31";
    NSArray *temp = [today componentsSeparatedByString:@"/"]; // componentsSeparatedByString 특정문자로 문자열을 나누는것
    NSUInteger month = [[temp objectAtIndex:1] integerValue];  // objectAtIndex 배열 번호 선택 후 integerValue 문자잢을 숫자로
    NSUInteger day = [[temp objectAtIndex:2] integerValue];
    
    NSArray *myTemp = [self.birthday componentsSeparatedByString:@"/"];
    NSUInteger myMonth = [[myTemp objectAtIndex:1] integerValue];
    NSUInteger myDay = [[myTemp objectAtIndex:2] integerValue];
    
    if ((month == myMonth) && (day == myDay))
    {
        return YES;
        
    } else {
        
        return NO;
        
    }
    
}

- (NSUInteger)yearsTotalWage:(NSUInteger)salary
{
    
    self.salary = salary;
    
    return self.salary;
    
}




@end
