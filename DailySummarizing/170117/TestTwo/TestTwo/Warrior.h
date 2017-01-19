//
//  Warrior.h
//  TestTwo
//
//  Created by abyssinaong on 2017. 1. 17..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Warrior : NSObject

@property id health;
@property id mana;
@property id physicalPower;
@property id magicalPower;
@property id weapon;

- (id)physicalAttack;
- (id)magicalAttack;

@end