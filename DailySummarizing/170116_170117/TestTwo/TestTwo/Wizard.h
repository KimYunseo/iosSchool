//
//  Wizard.h
//  TestTwo
//
//  Created by abyssinaong on 2017. 1. 17..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Warrior;

@interface Wizard : NSObject
@property NSString *name;
@property NSUInteger health;
@property NSUInteger mana;
@property NSUInteger def;
@property NSUInteger physicalPower;
@property NSUInteger magicalPower;
@property BOOL isDead;
//@property id weapon;

- (void)physicalAttackTo: (Warrior *)someChracter;
//- (id)magicalAttackTo: (id)somechracter;
- (void)healTo: (Warrior *)someChracter;
//- (void)windstormTo: (Warrior *)somechracter;

@end
/*
클래스의 interfce에 메서드를 '정의'만 해둠. 즉, 객체가 무슨 행위를 할 수 있는지만 써놨다는 뜻!
실제로 그 행위를 처리해야 할 일(코드)는 구현파일(.m)에 구현. @implementation Wizard와 @end 사이
*/

