//
//  main.m
//  UpCasting
//
//  Created by abyssinaong on 2017. 1. 23..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Student.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        
        Student *s1 = [[Student alloc] init];
        
        //upcasting
        Person *s2=s1;
        s2.name = @"원빈";
        
        //superclass를 받아오기 때문에
        s2.grade = @"대학교졸업";
        
        NSLog(@"%@", s2.name);
        NSLog(@"%@", s2.grade);

        
        
//        Person *s3 = [[Student alloc] init];
//        Student *s4 = s3;
//        s4.name = @"이나영";
//        s4.grade= @"대학교재학";
        

        
//        NSLog(@"%@", s4.name);
//        NSLog(@"%@", s4.grade);
        
    }
    return 0;
}
