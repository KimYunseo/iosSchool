//
//  Person.m
//  TestExample01
//
//  Created by abyssinaong on 2017. 1. 23..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import "Person.h"
#import "Bank.h"

@implementation Person

- (void)depositTo:(Bank *)bank accountMoney:(NSInteger)money{
    
    self.assets = self.assets + money;
    
    NSLog(@"%@가 %@은행에 %lu를 입금하였습니다.",self.name, bank.bankName, money);
}

- (void)inquiry:(Bank *)bank{
    
    NSLog(@"%@가 %@에서 자신의 계좌를 조회해 본 결과, 총 자산은 %lu원 입니다.", self.name, bank.bankName, self.assets);
    
}



@end
