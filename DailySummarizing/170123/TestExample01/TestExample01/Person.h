//
//  Person.h
//  TestExample01
//
//  Created by abyssinaong on 2017. 1. 23..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Bank;


@interface Person : NSObject

@property NSString *name;
@property NSInteger assets;

//입금했을 때 입금한 내용과 자산알려주는것;
- (void)depositTo:(Bank *)bank accountMoney:(NSInteger)money;

- (void)inquiry:(Bank *)bank;
@end
