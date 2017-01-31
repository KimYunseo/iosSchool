//
//  LeapYearBackup.m
//  PracticeHard01
//
//  Created by abyssinaong on 2017. 2. 1..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import "LeapYearBackup.h"

@implementation LeapYearBackup
/*
+ (NSUInteger)firstDay:(NSString *)fDay lastDay:(NSString *)lDay
{
    
    NSInteger firstNum = 0 ;
    NSInteger lastNum = 0;
    NSUInteger middleNum = 0;
    NSUInteger totalNum = 0;
    
    
    NSArray *firstDay = [fDay componentsSeparatedByString:@"/"];
    NSUInteger fYearNum = [[firstDay objectAtIndex:0] integerValue];
    NSUInteger fMonthNum = [[firstDay objectAtIndex:1] integerValue];
    NSUInteger fDayNum = [[firstDay objectAtIndex:2] integerValue];
    
    NSArray *lastDay = [lDay componentsSeparatedByString:@"/"];
    NSUInteger lYearNum = [[lastDay objectAtIndex:0] integerValue];
    NSUInteger lMonthNum = [[lastDay objectAtIndex:1] integerValue];
    NSUInteger lDayNum = [[lastDay objectAtIndex:2] integerValue];
    
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
    return totalNum;
}

*/
@end
