//
//  Orc.m
//  MagicBattle
//
//  Created by abyssinaong on 2017. 1. 19..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import "Orc.h"
#import "Human.h"
#import "Magic.h"

@implementation Orc

- (void)magicAttackTo:(Human *)human byMagicArrow:(Magic *)magicArrow{
    //마법 공격을 하면 마법공격력+마법스킬공격력 - 마법디펜스가 총 데미지가 됨.
    NSUInteger damage = self.mAp + magicArrow.magicArrowDamage - human.mDef;
    human.hp = human.hp - damage;
    NSLog(@"%@은 마법화살 공격을 받아 %lu의 데미지를 입어 HP가 %lu가 되었다.\n", human.name, damage, human.hp);
    
    //휴먼의 mp가 줄어드는것을 구현
    self.mp = self.mp - magicArrow.magicArrowMp;
    NSLog(@"%@는 마법화살을 사용하여 %lu의 MP를 소모하여 %lu의 MP가 남았습니다.\n\n", self.name, magicArrow.magicArrowMp, self.mp);
    
}

@end
