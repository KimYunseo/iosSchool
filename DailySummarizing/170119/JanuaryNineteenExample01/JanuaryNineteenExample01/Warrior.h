//
//  Warrior.h
//  JanuaryNineteenExample01
//
//  Created by abyssinaong on 2017. 1. 19..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GameCharactor.h"

@class Wizard;

@interface Warrior : GameCharactor

- (void)jumpTo:(GameCharactor *)charactor;

- (void)runTo:(GameCharactor *)charactor;

- (void)clairvoyanceAp:(GameCharactor *)clairAp;

@end
