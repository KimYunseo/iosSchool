//
//  main.m
//  JanuaryNineteenExample03
//
//  Created by abyssinaong on 2017. 1. 19..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Car.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //자동차 공장
        //차량의 번호는 초기부여값에서 변경이 불가합니다.
        Car *s1 = [[Car alloc] initWithCarNumber:@"23허0325" setCarName:@"포니"];
        
        [s1 goFoward];
        [s1 goFoward];
        [s1 goFoward];
        [s1 goFoward];
        [s1 goFoward];
        
        [s1 stop];
        
        
        
    }
    return 0;
}
