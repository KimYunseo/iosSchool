//
//  Elf.h
//  JanuraryEighteen
//
//  Created by abyssinaong on 2017. 1. 18..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Orc;
@class MagicSkill;

@interface Elf : NSObject

@property NSString *name;
@property NSUInteger hp;
@property NSUInteger mp;
@property NSUInteger str;
@property NSUInteger ap;
@property NSUInteger def;
@property NSUInteger magicAp;


- (void)attackTo: (Orc *)orc;
- (void)magicArrowAttackTo: (Orc *)orc byOrc: (MagicSkill *)magicSkill;

@end
