//
//  GameCharactor.h
//  JanuaryNineteenExample01
//
//  Created by abyssinaong on 2017. 1. 19..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GameCharactor : NSObject

@property NSString *name;
@property NSUInteger hp;
@property NSUInteger mp;

@property (readonly) NSInteger str;
@property (readonly) NSInteger ap;


@property NSUInteger def;
@property NSUInteger magicAp;

- (void)jumpTo:(GameCharactor *)charactor;

- (void)runTo:(GameCharactor *)charactor;

- (void)setStr:(NSInteger)str setAp:(NSInteger)ap;


@end
