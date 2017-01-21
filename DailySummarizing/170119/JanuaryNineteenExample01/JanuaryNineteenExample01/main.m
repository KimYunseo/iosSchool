//
//  main.m
//  JanuaryNineteenExample01
//
//  Created by abyssinaong on 2017. 1. 19..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GameCharactor.h"
#import "Warrior.h"
#import "Wizard.h"
//#import "GameCharactor.h.m"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        GameCharactor *g1 = [[GameCharactor alloc] init];
        g1.name = @"손오공";
        g1.hp = 100;
        g1.mp = 120;
//        g1.str = 10;
//        g1.ap = 10;
        g1.def = 5;
        g1.magicAp = 35;
        
        [g1 setStr:10 setAp:10];
        
        NSLog(@"힘 %lu, 공격력 %lu", g1.str, g1.ap);
        
        
        Warrior *e1 = [[Warrior alloc] init];
        e1.name = @"나메크";
        e1.hp = 100;
        e1.mp = 120;
        //e1.str = 10;
        //e1.ap = 10;
        e1.def = 5;
        e1.magicAp = 35;

        [e1 clairvoyanceAp:g1];
        
//        Wizard *o1 = [[Wizard alloc] init];
//        o1.name = @"오르크";
//        o1.hp = 150;
//        o1.mp = 90;
//        o1.str = 15;
//        o1.ap = 15;
//        o1.def = 10;
//    
//        [g1 jumpTo:o1];
//     //   [o1 jumpTo:e1];
//        [e1 jumpTo:g1];
//        
//        [e1 runTo:o1];
//        
//        [o1 runTo:e1];
//        
        
    }
    
    
    return 0;
}
