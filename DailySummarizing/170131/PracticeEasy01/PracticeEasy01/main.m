//
//  main.m
//  PracticeEasy01
//
//  Created by abyssinaong on 2017. 1. 31..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AbsoluteValue.h"
#import "PositiveValue.h"
#import "Round.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //절대값
        NSLog(@"%lu", [AbsoluteValue absoluteNum:-67]);
        
        //양수 계산기
        NSLog(@"%lu", [PositiveValue calcuOP:@"-" setNum1:500 setNum2:600]);
        
        
        //반올림
        NSLog(@"%lf", [Round roundNum:3.147592]);
    }
    return 0;
}
