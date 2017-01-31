//
//  main.m
//  IFStatementPractice
//
//  Created by abyssinaong on 2017. 1. 24..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Student.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        char sName[10]; // 문자열 ASCII 코드로 배열?
        NSInteger sNumber;
        
        NSLog(@"학생의 이름을 적으세요.\n");
        scanf("%s", sName);
        NSString *sName2 = [NSString stringWithUTF8String: sName];
        
        NSLog(@"학생의 학번을 적으세요.\n");
        scanf("%lu", &sNumber);
        
        Student *s1 = [[Student alloc] initWhithStudentNumber:sNumber setName:sName2];

        NSInteger num;
        NSLog(@"점수를 입력하세요\n");
        scanf("%ld", &num);
        NSString *grade = [s1 getGrade:num];
        CGFloat point = [s1 getPoint:grade];
        
        NSLog(@"%@의 성적 등급은 %@ 입니다.",s1.name, grade);
        NSLog(@"%@의 성적 포인트는 %lf 입니다.",s1.name, point);
        
    }
    return 0;
}
