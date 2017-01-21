//
//  SwordMan.m
//  BookClass
//
//  Created by abyssinaong on 2017. 1. 18..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//
#import "Person.h"
#import "SwordMan.h"


@implementation SwordMan

- (id)physicalAttack{
    NSLog(@"%@는 %@만큼의 물리공격을 했다.", self.name, self.physicalPower);
    return nil;
}

@end
