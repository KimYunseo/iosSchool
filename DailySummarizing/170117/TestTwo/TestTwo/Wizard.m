//
//  Wizard.m
//  TestTwo
//
//  Created by abyssinaong on 2017. 1. 17..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import "Wizard.h"

@implementation Wizard

- (id)physicalAttack{
    NSLog(@"물리공격을 합니다.");
    return nil;
}

- (id)magicalAttack{
    NSLog(@"마법공격을 합니다.");
    return nil;
}

@end


/*
 구현부에는 헤더파일에 있는 메서드를 모두 구현해야 한다. 
 헤더파일에 정의된것이 구현부에 구현되지 않을경우 이를 xcode에서 알려주는데
 알려줄 수 있는 이유는 #import 'Wizard.h'로 선언되어 있기 때문이다.
 #import "Wizard.h"를 하는 이유는 프로젝트내 다른 헤더 파일을 연결시키기 위함이다.
 
 
*/
