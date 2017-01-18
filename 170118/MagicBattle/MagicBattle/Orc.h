//
//  Orc.h
//  MagicBattle
//
//  Created by abyssinaong on 2017. 1. 19..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Human;
@class Magic;

@interface Orc : NSObject

@property NSString *name;
@property NSUInteger hp;
@property NSUInteger mp;
//마법공격력
@property NSUInteger mAp;
//마법디펜스
@property NSUInteger mDef;

- (void)magicAttackTo:(Human *)human byMagicArrow:(Magic *)magicArrow;


@end
