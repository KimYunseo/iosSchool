//
//  Wizard.m
//  TestTwo
//
//  Created by abyssinaong on 2017. 1. 17..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import "Wizard.h"
#import "Warrior.h"

@implementation Wizard

- (void)physicalAttackTo: (Warrior *)someChracter{
    NSInteger damage = self.physicalPower - someChracter.def;
    NSInteger baseHP = someChracter.health;
    someChracter.health = baseHP - damage;
    
    NSLog(@"위자드의 남은 피는 %lu입니다.", someChracter.health);
    
}

- (void)magicalAttackTo: (Warrior *)somechracter{
    NSLog(@"%@에게 마법공격을 합니다.", somechracter);
   
}

- (void)healTo: (Warrior *)somechracter{
    NSLog(@"%@에게 힐을 줍니다.", somechracter);
    
}
/*
- (void)windstormTo: (Warrior *)somechracter{
    NSLog(@"%@에게 윈드스톰을 겁니다.", somechracter);
   
}
*/
@end

/*
- (id)physicalAttackTo: (id)to;
- (id)magicalAttackTo: (id)to;
- (id)heal: (id)to;
- (id)windstormTo: (id)to;
*/

/*
 구현부에는 헤더파일에 있는 메서드를 모두 구현해야 한다. 
 헤더파일에 정의된것이 구현부에 구현되지 않을경우 이를 xcode에서 알려주는데
 알려줄 수 있는 이유는 #import 'Wizard.h'로 선언되어 있기 때문이다.
 #import "Wizard.h"를 하는 이유는 프로젝트내 다른 헤더 파일을 연결시키기 위함이다.
 
 
*/
