//
//  main.m
//  JanuraryEighteen
//
//  Created by abyssinaong on 2017. 1. 18..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Elf.h"
#import "Orc.h"
#import "MagicSkill.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Elf *e1 = [[Elf alloc] init];
        e1.name = @"나메크";
        e1.hp = 100;
        e1.mp = 120;
        e1.str = 10;
        e1.ap = 10;
        e1.def = 5;
        e1.magicAp = 35;
        
        Orc *o1 = [[Orc alloc] init];
        o1.name = @"오르크";
        o1.hp = 150;
        o1.mp = 90;
        o1.str = 15;
        o1.ap = 15;
        o1.def = 10;
        
        MagicSkill *magicArrowSkill = [[MagicSkill alloc] init];
        magicArrowSkill.magicArrow = 40;
        
        [e1 magicArrowAttackTo:o1 byOrc:magicArrowSkill];
        [e1 attackTo:o1];
        
        
        
        //[o1 attackTo:e1];
        //[o1 attackTo:e1];
        //[e1 attackTo:o1];
        //[o1 attackTo:e1];
        //[o1 attackTo:e1];
        
    }
    return 0;
}
