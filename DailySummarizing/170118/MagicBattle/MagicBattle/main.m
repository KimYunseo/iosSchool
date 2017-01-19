//
//  main.m
//  MagicBattle
//
//  Created by abyssinaong on 2017. 1. 19..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Human.h"
#import "Orc.h"
#import "Magic.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Human *h1 = [[Human alloc] init];
        h1.name = @"인간마법사 뿌뿌뿡";
        h1.hp = 250;
        h1.mp = 150;
        h1.mAp = 10;
        h1.mDef = 5;
        
        Orc *o1 = [[Orc alloc] init];
        o1.name = @"오크마법사 큐티엔젤";
        o1.hp = 300;
        o1.mp = 100;
        o1.mAp = 7;
        o1.mDef = 7;
        
        Magic *magicSkill = [[Magic alloc] init];
        magicSkill.magicArrowDamage = 10;
        magicSkill.magicArrowMp = 5;
        
        [h1 magicAttackTo:o1 byMagicArrow:magicSkill];
        
        
    }
    return 0;
}
