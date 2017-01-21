//
//  Person.m
//  JanuaryNineteenExample02
//
//  Created by abyssinaong on 2017. 1. 19..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import "Person.h"

@implementation Person

- (void)eat{
    NSInteger usYears = self.age - 1;
    NSLog(@"만 %lu살인 %@는 밥을 먹고있다.", usYears, self.name);
    
}


@end
