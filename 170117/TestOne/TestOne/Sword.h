//
//  Sword.h
//  TestOne
//
//  Created by abyssinaong on 2017. 1. 17..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Sword : NSObject

@property id lenght;
@property id countEdge;
@property id width;
@property id addDamage;

- (id)stabing;//찌른다
- (id)cutting;//벤다
- (id)blocking;//막는다


@end
