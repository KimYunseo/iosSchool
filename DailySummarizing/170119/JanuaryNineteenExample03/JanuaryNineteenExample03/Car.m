//
//  Car.m
//  JanuaryNineteenExample03
//
//  Created by abyssinaong on 2017. 1. 19..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import "Car.h"
@interface Car()

@property NSString *color;
@property NSString *carNumber;
@property NSString *carName;
@property NSInteger speed;


@end

@implementation Car

-(instancetype)initWithCarNumber:(NSString *)carNumber setCarName:(NSString *)carName{
    self = [super init];
    
    if( self ) {
        self.carNumber = carNumber;
        self.carName = carName;
    }
    
    return self;
}


- (void)goFoward{
    [self addSpeed];
    if(self.speed == 100){
        
        NSLog(@"%@가 최대속도 입니다.", self.carName);
        
    } else if(self.speed < 100){
        
        [self addSpeed];
        NSLog(@"%@가 %lu의 속도로 앞으로 갑니다.", self.carName, self.speed);
        
    }
}

//내부 메서드 연습용
- (void)addSpeed{
    self.speed += 20;
}

- (void)stop{
    self.speed = 0;
    NSLog(@"%@가 멈춥니다.", self.carName);
}


@end
