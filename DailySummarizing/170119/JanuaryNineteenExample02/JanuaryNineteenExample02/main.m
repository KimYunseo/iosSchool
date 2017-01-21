//
//  main.m
//  JanuaryNineteenExample02
//
//  Created by abyssinaong on 2017. 1. 19..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Student.h"
#import "UniversityStudent.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {

        Person *p1 = [[Person alloc] init];
        p1.name = @"해오라기";
        p1.age = 5;
        
        
        Student *s1 = [[Student alloc] init];
        s1.name = @"따오기";
        s1.age = 17;
        s1.grade = @"고등학교 재학";
        
        Student *s2 = [[Student alloc] init];
        s2.name = @"참새";
        s2.age = 17;
        s2.grade = @"고등하교 재학";
        
        UniversityStudent *u1 = [[UniversityStudent alloc] init];
        u1.name = @"가마우지";
        u1.age = 24;
        u1.grade = @"대학교 재학중";
        u1.major = @"법학과";
        
        UniversityStudent *u2 = [[UniversityStudent alloc] init];
        u2.name = @"비둘기";
        u2.age = 24;
        u2.grade = @"대학교 재학중";
        u2.major = @"경역학과";
        
        
        [p1 eat];
        [s1 study];
        [u1 goMT];
        
        [s1 eat];
        [u1 eat];
        
        
    }
    return 0;
}
