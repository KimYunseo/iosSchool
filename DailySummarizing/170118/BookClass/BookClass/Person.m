//
//  Person.m
//  BookClass
//
//  Created by abyssinaong on 2017. 1. 18..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import "Person.h"

@implementation Person

- (id)walk{
    NSLog(@"%@는 걷는다.", self.name);
    return nil;
}

- (id)run{
    NSLog(@"%@는 뛴다.", self.name);
    return nil;
}

- (id)smile{
    NSLog(@"%@는 미소짓는다.", self.name);
    return nil;
}
- (id)laught{
    NSLog(@"%@는 웃는다.", self.name);
    return nil;
}
@end
