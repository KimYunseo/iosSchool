//
//  main.m
//  SwitchPractice01
//
//  Created by abyssinaong on 2017. 1. 31..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Month.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        Month *m1 = [[Month alloc] init];
        
        NSInteger num = [m1 lastdayMonth:13];
        
        if(num <= 12 )
        {
            NSLog(@"%lu월의 마지막 날은 %lu일 이다.",m1.month, num);
        } else {
            
            NSLog(@"잘못 입력하였습니다.");
        }
        
        
        
        
    }
    return 0;
}
