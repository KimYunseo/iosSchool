윤년구하기
====


* LeapYear.h


```objc

#import <Foundation/Foundation.h>

@interface LeapYear : NSObject

+ (BOOL)isLeapYear:(NSUInteger)year;

+ (NSUInteger)lastDayOfMonth:(NSUInteger)month setYear:(NSUInteger)year;

+ (NSUInteger)firstDay:(NSString *)fDay lastDay:(NSString *)lDay;
@end


```

* LeapYear.m

```objc

#import "LeapYear.h"

@implementation LeapYear

+ (BOOL)isLeapYear:(NSUInteger)year
{
    
    if (year % 4 == 0)
    {
        
        if (year % 100 == 0)
        {
            if (year % 400 == 0) return YES;

            else return NO;
            
        } else return YES;
        
    } else return NO;
   
    
}


+ (NSUInteger)lastDayOfMonth:(NSUInteger)month setYear:(NSUInteger)year
{
    
    NSInteger monthNum = 0;
    NSInteger lastDay = 0;
    
    if([LeapYear isLeapYear:year])
    {
        
        if (month == 1 || month == 3 || month == 5 || month == 7 || month == 8 ||month == 10 || month == 12)
        {
            monthNum = 1;
            
        } else if (month == 2)
        {
            
            monthNum = 2;
            
        } else
        {
            monthNum = 3;
        }
        
    } else
    {
        
        if (month == 1 || month == 3 || month == 5 || month == 7 || month == 8 ||month == 10 || month == 12)
        {
            monthNum = 1;
            
        } else if (month == 2)
        {
            
            monthNum = 4;
            
        } else
        {
            monthNum = 3;
        }
    }
    
    switch (monthNum) {
        case 1:
            lastDay = 31;

            return lastDay;
            break;
        
        case 2:
            
            lastDay = 29;

            return lastDay;
            break;
        
        case 3:
            
            lastDay = 30;

            return lastDay;
            break;
        
        case 4:
            
            lastDay = 28;
            return lastDay;
            break;
            
        default:
            lastDay = 0;
            return lastDay;
            break;
    }
    
}

+ (NSUInteger)firstDay:(NSString *)fDay lastDay:(NSString *)lDay
{
    
    NSInteger firstNum = 0 ;
    NSUInteger totalNum = 0;
    NSInteger minusFirstNum = 0; // 시작점 위치에서 빼는것
    NSInteger plusLastNum = 0; //마지막점 위치 더하는것
    
    NSArray *firstDay = [fDay componentsSeparatedByString:@"/"];
    NSUInteger fYearNum = [[firstDay objectAtIndex:0] integerValue];
    NSUInteger fMonthNum = [[firstDay objectAtIndex:1] integerValue];
    NSUInteger fDayNum = [[firstDay objectAtIndex:2] integerValue];
    
    NSArray *lastDay = [lDay componentsSeparatedByString:@"/"];
    NSUInteger lYearNum = [[lastDay objectAtIndex:0] integerValue];
    NSUInteger lMonthNum = [[lastDay objectAtIndex:1] integerValue];
    NSUInteger lDayNum = [[lastDay objectAtIndex:2] integerValue];

    NSInteger i;
    NSInteger j; // 월을 연결
    
    //sum(첫 시작년도: 마지막 년도 전) - 첫 시작년도 1월 부터 첫 시작년도 설정일 까지 + 마지막 년도 1월 부터 마지막 년도 설정일 까지
    
    //sum(첫 시작년도: 마지막 년도 전)
    for( i = fYearNum ; i < lYearNum ; i = i + 1 )
    {
        
        {
            for( j = 1 ; j <=12 ; j = j + 1 )
            {
                firstNum = firstNum + [LeapYear lastDayOfMonth:j setYear:i];
                if (i == 12) i = 1;
            }
        }

    }
    
    //첫 시작년도 1월 부터 첫 시작년도 설정일 까지
    for( j = 1 ; j < fMonthNum ; j = j + 1)
    {
        minusFirstNum = minusFirstNum + [LeapYear lastDayOfMonth:j setYear:fYearNum];
    }
    minusFirstNum = minusFirstNum + fDayNum;
    
    //마지막 년도 1월 부터 마지막 년도 설정일 까지
    
    for( j =1 ; j < lMonthNum; j = j+1)
    {
        plusLastNum = plusLastNum + [LeapYear lastDayOfMonth:j setYear:lYearNum];
    }
    plusLastNum = plusLastNum + lDayNum;
    
    
    totalNum = firstNum - minusFirstNum + plusLastNum -1 ;
    
    
    
return totalNum;
     
}

@end

```

* main.h

```objc
#import <Foundation/Foundation.h>
#import "LeapYear.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {

        
        BOOL yearNumber = [LeapYear isLeapYear:2000];
        
        if (yearNumber)
        {
            NSLog(@"YES");
        }
        else
        {
            NSLog(@"NO");
        }
        
        NSInteger lastDayNum = [LeapYear lastDayOfMonth:2 setYear:2000];
        NSLog(@"%lu",lastDayNum);
        
        NSInteger lastDayNum1 = [LeapYear lastDayOfMonth:2 setYear:1999];
        NSLog(@"%lu",lastDayNum1);
        
        
        NSUInteger totalDay = [LeapYear firstDay:@"2015/12/09" lastDay:@"2017/03/27"];
        NSLog(@"%lu", totalDay);
        
    }
    return 0;
}
```

1.윤년인지 여부 판단 (2000년)

2.특정 연도에 해당하는 달의 마지막 날 (2000년 2월, 1999년 2월)

3.D-Day (2015/12/09 ~ 2017/03/27)

![결과](https://github.com/KimYunseo/iosSchool/blob/master/DailySummarizing/170131/PracticeHard01/leapYearResult.png)