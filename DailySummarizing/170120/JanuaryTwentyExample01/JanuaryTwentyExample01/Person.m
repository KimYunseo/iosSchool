//
//  Person.m
//  JanuaryTwentyExample01
//
//  Created by abyssinaong on 2017. 1. 20..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import "Person.h"
#import "Elf.h"

@interface Person ()

@property NSString *name;


@end

@implementation Person


- (instancetype)initWithName:(NSString *)name{
    
    self = [super init];
    
    self.name = name;

    return self;
    
}

- (void)eat{
    NSLog(@"%@는 밥을 먹습니다.", self.name);
}
- (void)goTo:(Elf *)elf{
    NSLog(@"%@가 %@에게로 갑니다.", self.name, elf.name);
    
}




@end
