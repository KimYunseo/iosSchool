//
//  Student.m
//  JanuaryNineteenExample02
//
//  Created by abyssinaong on 2017. 1. 19..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import "Student.h"
#import "UniversityStudent.h"

@implementation Student

- (void)study{
    
    //[super eat];
    NSLog(@"나는 %@이고 %lu이다. %@ 이다.", self.name, self.age, self.grade);
    
}

- (void)eat{
    
    NSLog(@"%@는 급식을 먹는다.", self.name);
    
}


@end
