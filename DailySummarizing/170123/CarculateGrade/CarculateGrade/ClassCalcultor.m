//
//  ClassCalcultor.m
//  CarculateGrade
//
//  Created by abyssinaong on 2017. 1. 23..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import "ClassCalcultor.h"

@implementation ClassCalcultor



- (CGFloat)sumSubjectMath:(CGFloat)gradePoint1
             mathPoint:(CGFloat)math
            cLangGrade:(CGFloat)gradePoint2
             cLagPoint:(CGFloat)cLang
             algoGrade:(CGFloat)gradePoint3
             algorithm:(CGFloat)algo
           bioTecGrade:(CGFloat)gradePoint4
                bioTec:(CGFloat)bioTec
{
    
    self.mathmaticth = gradePoint1*math;
    self.cLanguage = gradePoint2*cLang;
    self.algorithm = gradePoint3*algo;
    self.bioTecnology = gradePoint4*bioTec;
    
    CGFloat sum = self.mathmaticth + self.cLanguage + self.algorithm  + self.bioTecnology;
    return sum;

    
}

//- (void)averageSubjectMath:(CGFloat)gradePoint1
//             mathPoint:(CGFloat)math
//            cLangGrade:(CGFloat)gradePoint2
//             cLagPoint:(CGFloat)cLang
//             algoGrade:(CGFloat)gradePoint3
//             algorithm:(CGFloat)algo
//           bioTecGrade:(CGFloat)gradePoint4
//                    bioTec:(CGFloat)bioTec
//{
//
//    self.mathmaticth = gradePoint1*math;
//    self.cLanguage = gradePoint2*cLang;
//    self.algorithm = gradePoint3*algo;
//    self.bioTecnology = gradePoint4*bioTec;
//    
//    self.average = (self.mathmaticth + self.cLanguage + self.algorithm  + self.bioTecnology)/(gradePoint1+gradePoint2+gradePoint3+gradePoint4);
//    
//    NSLog(@"학점 평균 %lf", self.average);
//    
//}

- (CGFloat)averageSubjectMath:(CGFloat)gradePoint1
                 mathPoint:(CGFloat)math
                cLangGrade:(CGFloat)gradePoint2
                 cLagPoint:(CGFloat)cLang
                 algoGrade:(CGFloat)gradePoint3
                 algorithm:(CGFloat)algo
               bioTecGrade:(CGFloat)gradePoint4
                    bioTec:(CGFloat)bioTec
{
    
    [self sumSubjectMath:gradePoint1 mathPoint:math cLangGrade:gradePoint2 cLagPoint:cLang algoGrade:gradePoint3 algorithm:algo bioTecGrade:gradePoint4 bioTec:bioTec];
    
    
    return (self.mathmaticth + self.cLanguage + self.algorithm  + self.bioTecnology)/(gradePoint1+gradePoint2+gradePoint3+gradePoint4);
    
//    NSLog(@"학점 평균 %lf", self.average);
    
}



//- (void)sumSubject{
//    
//    self.sum = self.mathmaticth + self.cLanguage + self.algorithm  + self.bioTecnology;
//    NSLog(@"%lf", self.sum);
//    
//}
//
//- (void)avergeSubject{
//    
//    self.average = (self.mathmaticth + self.cLanguage + self.algorithm  + self.bioTecnology)/4;
//    NSLog(@"%lf", self.average);
//    
//}

@end
