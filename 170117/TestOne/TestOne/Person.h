//
//  Person.h
//  TestOne
//
//  Created by abyssinaong on 2017. 1. 17..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject


@property id name;
@property id gender;
@property id job;
@property id years;
@property id phoneNumber;
@property id nationality;
@property id hairColor;
@property id eyesColor;
@property id haveGlasses;
@property id growShape;
@property id skinColor;

- (id)run;
- (id)walk;
- (id)grap;
- (id)eat;
- (id)talk;
- (id)fight;
- (id)ride;
- (id)cring;
- (id)smile;
- (id)playing;

@end


/*
- 명명법

* 시스템 예약어를 사용할 수 없다.
* 시작 글자에 숫자를 사용할 수 없다.
* 공백을 포함할 수 없다.
* 프로젝트 & 클래스 명은 "PascalCase"로 작성(관례)
* 프로퍼티 & 메소드 명은 "camelCase"로 작성(통상적 관례)

- @interface와 @end 사이에 프로퍼티 및 메서드를 정의합니다.
 
- 프로퍼티
 * 객체가 가질 수 있는 특징, 상태 등의 `값`!
 * property <데이터 타입> <프로퍼티 이름>;
 * property는 메서드로 볼 수 있다.<= 헤더 파일에 바로 값을 안넣기 때문
 
- 메서드
 * 객체가 수행할 수 있는 동작 또는 기능
 * - (<반환 타입>)<메서드 이름>;
 
*/
