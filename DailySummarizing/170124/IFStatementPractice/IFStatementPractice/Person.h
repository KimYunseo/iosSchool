//
//  Person.h
//  IFStatementPractice
//
//  Created by abyssinaong on 2017. 1. 24..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject


@property (readonly) NSString *name;
@property (readonly) NSUInteger studentNumber;

- (instancetype)initWhithStudentNumber:(NSUInteger)sNum setName:(NSString *)sName;

@end
