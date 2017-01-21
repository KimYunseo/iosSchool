//
//  Orc.m
//  JanuraryEighteen
//
//  Created by abyssinaong on 2017. 1. 18..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import "Orc.h"
#import "Elf.h"

@implementation Orc

- (void)attackTo: (Elf *)elf{
    NSUInteger damage = self.ap + self.ap - elf.def;
    elf.hp = elf.hp - damage;
    NSLog(@"엘프의 남은 HP는 %lu입니다.\n", elf.hp);
    
    
}

@end
