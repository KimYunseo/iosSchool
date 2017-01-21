//
//  Warrior.m
//  JanuaryNineteenExample01
//
//  Created by abyssinaong on 2017. 1. 19..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import "Warrior.h"
#import "GameCharactor.h"

@implementation Warrior
- (void)jumpTo:(GameCharactor *)charactor{
    
    [super jumpTo:charactor];
    NSLog(@"높이 뛰어서 %@에게로 점프 합니다.", charactor.name);
}

- (void)runTo:(GameCharactor *)charactor{
    
    NSLog(@"%@에게 겁나 뛰어 갑니다.", charactor.name);
    
}

- (void)clairvoyanceAp:(GameCharactor *)clairAp{
    
    NSLog(@"게임케릭터의 공격력은 %lu 입니다.", clairAp.ap);
    
}

@end
