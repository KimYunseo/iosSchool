//
//  Orc.h
//  JanuraryEighteen
//
//  Created by abyssinaong on 2017. 1. 18..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Elf;

@interface Orc : NSObject

@property NSString *name;
@property NSUInteger hp;
@property NSUInteger mp;
@property NSUInteger str;
@property NSUInteger ap;
@property NSUInteger def;

- (void)attackTo: (Elf *)elf;
//- (void)magicAttackTo;


@end
