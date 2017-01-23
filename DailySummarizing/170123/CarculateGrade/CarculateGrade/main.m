//
//  main.m
//  CarculateGrade
//
//  Created by abyssinaong on 2017. 1. 23..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ClassCalcultor.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        ClassCalcultor *c1 = [[ClassCalcultor alloc] init];
//        c1.mathmaticth = 80.0;
//        c1.cLanguage = 70.0;
//        c1.algorithm = 60.5;
//        c1.bioThecnology = 70.5;
        
//        [c1 sumSubject];
//        [c1 avergeSubject];
//        
        NSLog(@"%lf",[c1 sumSubjectMath:3.0 mathPoint:75.6 cLangGrade:3.0 cLagPoint:77.5 algoGrade:3.0 algorithm:81.5 bioTecGrade:3.0 bioTec:97.5]);
        
        
        NSLog(@"%lf", [c1 averageSubjectMath:3.0 mathPoint:75.6 cLangGrade:3.0 cLagPoint:77.5 algoGrade:3.0 algorithm:81.5 bioTecGrade:3.0 bioTec:97.5]);
        
        
//        [c1 averageSubjectMath:3.0 mathPoint:75.6 cLangGrade:3.0 cLagPoint:77.5 algoGrade:3.0 algorithm:81.5 bioTecGrade:3.0 bioTec:97.5];
    }
    return 0;
}
