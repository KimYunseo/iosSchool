//
//  Car.h
//  JanuaryNineteenExample03
//
//  Created by abyssinaong on 2017. 1. 19..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Car : NSObject

//@property (readonly) NSInteger speed;


- (void)goFoward;

- (void)stop;


- (instancetype)initWithCarNumber:(NSString *)carNumber setCarName:(NSString *)carName;

@end
