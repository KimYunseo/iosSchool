//
//  ToolBox.h
//  Gugudan
//
//  Created by abyssinaong on 2017. 2. 1..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ToolBox : NSObject

//1~9까지 구구단
+ (void)gugudan;
+ (void)gugudanByFor:(NSInteger)num;

//팩토리얼
+ (void)factorialByFor:(NSInteger)num;

+ (void)factorialByString:(NSInteger)num;

//배수 구하기
+ (void)fidMultipleNum:(NSInteger)num maxLange:(NSInteger)maxNum;

//삼각수 구하기
+ (NSInteger)triangularNumber:(NSInteger)num;


@end
