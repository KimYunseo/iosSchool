//
//  Wizard.h
//  TestTwo
//
//  Created by abyssinaong on 2017. 1. 17..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Wizard : NSObject

@property id health;
@property id mana;
@property id physicalPower;
@property id magicalPower;
@property id weapon;

- (id)physicalAttack;
- (id)magicalAttack;

@end
/*
클래스의 interfce에 메서드를 '정의'만 해둠. 즉, 객체가 무슨 행위를 할 수 있는지만 써놨다는 뜻!
실제로 그 행위를 처리해야 할 일(코드)는 구현파일(.m)에 구현. @implementation Wizard와 @end 사이
*/
