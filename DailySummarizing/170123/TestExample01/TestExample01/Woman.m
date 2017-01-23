//
//  Woman.m
//  TestExample01
//
//  Created by abyssinaong on 2017. 1. 23..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import "Woman.h"
#import "Bank.h"

@implementation Woman

- (void)accountArrangement:(Bank *)bank{
    
    NSLog(@"%@가 %@은행에서 통장정리를 하였습니다.", self.name, bank.bankName);
    
}

@end
