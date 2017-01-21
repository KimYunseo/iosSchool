//
//  Warrior.m
//  ExampleInheritance
//
//  Created by abyssinaong on 2017. 1. 18..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import "Warrior.h"

@implementation Warrior

- (void)addAp{
    self.ap = self.ap + self.ap1;
    NSLog(@"워리어를 선택하여 공격력이 %lu 만큼 올라 %lu가 되었습니다. ", self.ap1, self.ap);
}


@end
