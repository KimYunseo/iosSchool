//
//  Person.m
//  IFStatementPractice
//
//  Created by abyssinaong on 2017. 1. 24..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import "Person.h"

@interface Person()

@property NSString *name;
@property NSUInteger studentNumber;

@end

@implementation Person

- (instancetype)initWhithStudentNumber:(NSUInteger)sNum setName:(NSString *)sName
{
    self = [super init];
    if (self) {
        
        self.studentNumber = sNum;
        self.name = sName;
        
        NSLog(@"학번: %lu 이름: %@", self.studentNumber, self.name);
    }
    return self;
}

@end
