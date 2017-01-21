//
//  Warrior.m
//  TestTwo
//
//  Created by abyssinaong on 2017. 1. 17..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import "Warrior.h"
#import "Wizard.h"

@implementation Warrior

- (void)physicalAttackTo: (Wizard *)someChracter{
    //피지컬 파워만큼을 someChracter의 health에서 빼야된다.
    
    NSInteger damage = self.physicalPower - someChracter.def;
    NSInteger baseHP = someChracter.health;
    someChracter.health = baseHP - damage;
    
    NSLog(@"워리어의 남은 피는 %lu입니다.", someChracter.health);
    
    
    //id resultHealth = (Wizard *health - self.physicalPower;
}
/*
- (id)magicalAttackTo: (id)someChracter{
    NSLog(@"%@에게 마법공격을 합니다.", someChracter);
    return nil;
}
*/
/*
- (void)jumpTo: (void)to{
    NSLog(@"%@로 점프합니다.", to);
    
}
*/
@end
