//
//  main.m
//  PracticeHard01
//
//  Created by abyssinaong on 2017. 1. 31..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

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
