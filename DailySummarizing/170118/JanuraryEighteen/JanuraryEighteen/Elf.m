//
//  Elf.m
//  JanuraryEighteen
//
//  Created by abyssinaong on 2017. 1. 18..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import "Elf.h"
#import "Orc.h"
#import "MagicSkill.h"

@implementation Elf

- (void)attackTo: (Orc *)orc{
    NSUInteger damage = self.ap + self.ap - orc.def;
    orc.hp = orc.hp - damage;
    NSLog(@"오크의 남은 HP는 %lu입니다.\n", orc.hp);
    
    
}

- (void)magicArrowAttackTo: (Orc *)orc byOrc: (MagicSkill *)magicSkill{
    NSUInteger magicDamage = self.magicAp + magicSkill.magicArrow;
    orc.hp = orc.hp + magicDamage;
    NSLog(@"오크의 남은 HP는 %lu입니다. 매직공격 %lu", orc.hp, magicDamage);
}


@end
