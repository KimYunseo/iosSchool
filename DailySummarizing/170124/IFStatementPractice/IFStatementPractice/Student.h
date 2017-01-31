//
//  Student.h
//  IFStatementPractice
//
//  Created by abyssinaong on 2017. 1. 24..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"


@interface Student : Person

@property NSString *subject;

- (NSString *)getGrade:(NSInteger)score;
- (CGFloat)getPoint:(NSString *)grade;

@end
