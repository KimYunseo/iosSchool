//
//  Student.h
//  JanuaryNineteenExample02
//
//  Created by abyssinaong on 2017. 1. 19..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

@interface Student : Person

@property NSString *grade;

- (void)study;

- (void)eat;

@end