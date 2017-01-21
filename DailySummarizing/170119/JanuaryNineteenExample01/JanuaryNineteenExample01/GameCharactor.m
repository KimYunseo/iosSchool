//
//  GameCharactor.m
//  JanuaryNineteenExample01
//
//  Created by abyssinaong on 2017. 1. 19..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import "GameCharactor.h"

@interface GameCharactor();

@property NSInteger str;
@property NSInteger ap;

@end // 왜 들어가는가?

@implementation GameCharactor

- (void)jumpTo:(GameCharactor *)charactor{
    
    NSLog(@"%@에게로 점프 합니다.", charactor.name);

}

- (void)runTo:(GameCharactor *)charactor{
    
    NSLog(@"%@는 평범하게 달립니다.", charactor.name);
    
}

- (void)setStr:(NSInteger)str setAp:(NSInteger)ap{
    
    self.str = str;
    
    self.ap = ap;
    
}


@end
