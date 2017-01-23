//
//  Man.m
//  TestExample01
//
//  Created by abyssinaong on 2017. 1. 23..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import "Man.h"
#import "Bank.h"

@implementation Man

- (void)creatCard:(Bank *)bank{
    
    NSLog(@"%@가 %@은행에서 카드를 만들었습니다.", self.name, bank.bankName);
    
}

- (void)depositTo:(Bank *)bank accountMoney:(NSInteger)money{
    
    [super depositTo:(Bank *)bank accountMoney:(NSInteger)money];
    [self inquiry:(Bank *)bank];
    
}



@end
