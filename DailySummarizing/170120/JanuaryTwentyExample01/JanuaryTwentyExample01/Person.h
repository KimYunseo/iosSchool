//
//  Person.h
//  JanuaryTwentyExample01
//
//  Created by abyssinaong on 2017. 1. 20..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Elf;

@interface Person : NSObject

@property (readonly) NSString *name;



- (instancetype)initWithName:(NSString *)name;

- (void)eat;
- (void)goTo:(Person *)elf;



@end
