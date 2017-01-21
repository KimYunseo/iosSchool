//
//  Warrior.h
//  TestTwo
//
//  Created by abyssinaong on 2017. 1. 17..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Wizard;

@interface Warrior : NSObject

@property NSString *name;
@property NSUInteger health;
@property NSUInteger mana;
@property NSUInteger def;
@property NSUInteger physicalPower;
@property NSUInteger magicalPower;
@property BOOL isDead;

- (void)physicalAttackTo:(Wizard *)someChracter;
//- (NSUInteger)magicalAttackTo: (id)someChracter;
//- (void)jumpTo: (void)to;


@end
