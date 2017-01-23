//
//  ClassCalcultor.h
//  CarculateGrade
//
//  Created by abyssinaong on 2017. 1. 23..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ClassCalcultor : NSObject

@property CGFloat mathmaticth;
@property CGFloat cLanguage;
@property CGFloat algorithm;
@property CGFloat bioTecnology;


- (CGFloat)sumSubjectMath:(CGFloat)gradePoint1
             mathPoint:(CGFloat)math
            cLangGrade:(CGFloat)gradePoint2
             cLagPoint:(CGFloat)cLang
             algoGrade:(CGFloat)gradePoint3
             algorithm:(CGFloat)algo
           bioTecGrade:(CGFloat)gradePoint4
                bioTec:(CGFloat)bioTec;

- (CGFloat)averageSubjectMath:(CGFloat)gradePoint1
             mathPoint:(CGFloat)math
            cLangGrade:(CGFloat)gradePoint2
             cLagPoint:(CGFloat)cLang
             algoGrade:(CGFloat)gradePoint3
             algorithm:(CGFloat)algo
           bioTecGrade:(CGFloat)gradePoint4
                bioTec:(CGFloat)bioTec;


//- (void)sumSubject;
//
//- (void)avergeSubject;

@end
