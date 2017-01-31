//
//  LeapYear.m
//  PracticeHard01
//
//  Created by abyssinaong on 2017. 1. 31..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

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
//    NSInteger lastNum = 0;
//    NSUInteger middleNum = 0;
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
//        NSLog(@"%lu",i);
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
    
    
    //전체 수식 합치기
    
//    NSLog(@"%lu",firstNum);
//    NSLog(@"%lu",minusFirstNum);
//    NSLog(@"%lu",plusLastNum);
    totalNum = firstNum - minusFirstNum + plusLastNum -1 ;
    
    
    /*
    
    if(fYearNum != lYearNum)
    {
        //첫 년도
        if(fMonthNum != 12)
        {
            for(fMonthNum = fMonthNum + 1; fMonthNum <=12 ; fMonthNum = fMonthNum + 1 )
            {
                firstNum = firstNum + [LeapYear lastDayOfMonth:fMonthNum setYear:fYearNum];
//                NSLog(@"%lu  %lu", fMonthNum , firstNum);
            }
        }
        firstNum = firstNum + [LeapYear lastDayOfMonth:fMonthNum setYear:fYearNum] - (fDayNum-1);
        
        
        //마지막 년도
        
        if(lMonthNum != 1)
        {
            
            for( lMonthNum = lMonthNum - 1; lMonthNum >=1; lMonthNum = lMonthNum - 1 )
            {

                lastNum = lastNum + [LeapYear lastDayOfMonth:lMonthNum setYear:lYearNum];
//                NSLog(@"마지막 년도 %lu   %lu",lMonthNum, lastNum);
            }
        }
        
        lastNum = lastNum + lDayNum;
        
        //중간연도
        if ( lYearNum - fYearNum > 1 )
        {
            for(fYearNum = fYearNum+1 ; fYearNum <= lYearNum - 1; fYearNum= fYearNum + 1)
            {
                if ([LeapYear isLeapYear:fYearNum])
                {
                    middleNum = middleNum + 366;
                    
                }
                else
                {
                    middleNum = middleNum +365;
                }
//                NSLog(@"중간 연도 증가 %lu",fYearNum);
            }
            
        }
        
        
        totalNum = firstNum + middleNum + lastNum -1 ;
//        NSLog(@"처음 연도 값%lu",firstNum);
//        NSLog(@"중간 연도 값 %lu",middleNum);
//        NSLog(@"마지막 연도 값 %lu",lastNum);
        
        
    }
    else
    {
        firstNum = fDayNum;
        
        if(fMonthNum != 1)
        {
            for(fMonthNum = fMonthNum - 1; fMonthNum >=1 ; fMonthNum = fMonthNum - 1 )
            {
                firstNum = firstNum + [LeapYear lastDayOfMonth:fMonthNum setYear:fYearNum];
            }
        }
        

        lastNum = lDayNum;
        
        if(lMonthNum != 1)
        {
            
            for( lMonthNum = lMonthNum - 1; lMonthNum >=1; lMonthNum = lMonthNum - 1 )
            {
                lastNum = lastNum + [LeapYear lastDayOfMonth:lMonthNum setYear:lYearNum];
            }
        }
        totalNum = lastNum - firstNum -1;
        
    }
     */
return totalNum;
     
}

@end
