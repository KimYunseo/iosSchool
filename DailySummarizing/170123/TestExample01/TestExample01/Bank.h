//
//  Bank.h
//  TestExample01
//
//  Created by abyssinaong on 2017. 1. 23..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Person;

@interface Bank : NSObject

@property NSString *bankName;
@property NSString *bankAdress;

- (void)changeTransfer:(NSString *)adress;
- (void)bankTransferTo:(Person *)onePerson fromBank:(Person *)otherPerson transferValue:(NSInteger)money;

@end
