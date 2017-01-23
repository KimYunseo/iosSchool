//
//  Bank.m
//  TestExample01
//
//  Created by abyssinaong on 2017. 1. 23..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import "Bank.h"
#import "Person.h"

@implementation Bank

- (void)changeTransfer:(NSString *)adress{
    
    NSLog(@"%@은행이 %@에서 %@로 주소를 변경하였습니다.",self.bankName, self.bankAdress, adress);
    
}
- (void)bankTransferTo:(Person *)onePerson fromBank:(Person *)otherPerson transferValue:(NSInteger)money{
    
    onePerson.assets = onePerson.assets - money;
    
    otherPerson.assets = otherPerson.assets + money;
    
    NSLog(@"%@가 %@에게 %lu만큼 이체를 하였습니다.",onePerson.name, otherPerson.name, money);
    
}

@end
