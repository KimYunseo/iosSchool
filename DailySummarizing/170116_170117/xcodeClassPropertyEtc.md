Ⅰ.Xcode

* Xcode 구동방법 실습

Ⅱ.클래스

 1.명명법

 * 시스템 예약어 사용불가.
 * 시작 글자에 숫자를 사용불가.
 * 공백를 포함할 수 없다.
 * 프로젝트&클래스 명 "PasacalCase"
 * 프로퍼티&메소드 명 "camelCase"

2.주석처리
 
 * 한줄주석 

		   // 한줄주석은 이런식으로
   
 * 문단 주석

	      /*
	      문단주석은 이런식으로!
	     */

3.클래스

 * 객체들의 공통된 특성 행위 등을 추출하여 구조화 한것

 1)프로퍼티

  * 객체가 가질 수 있는 특성 등의 값

			@property <테이터타입> <프로퍼티이름>;

 2)메서드

  * 객체가 수행할 수 있는 동작 또는 기능
 
			 - (<반환 타입>)<메서드 이름>;

 3)클래스파일
 
  * 클래스 파일은 .h/.m 두 개로 생성된다.
  * 클래스 파일에는 프로퍼티와 메서드가 선언된다.

			  Person.h
			  
			  @property id name;
			  @property id age;
			  @property id asset;
			  
			  
			  //메서드 정의
			  
			  - (void)walk;
			  - (void)sleep;
			  
			  
			  Person.m
			  
			  //메서드 구현
			  
			  - (void)walk{
			   NSLog(@"%@는 걷습니다.", self.name);
			  } 
			  
			  - (void)sleep{
				NSLog(@"%@는 잠을 잡니다.", self.name);
			  }
			  
			  
			  
4.객체

 1)객체생성
  
  * 객체는 클래스가 실질적인 형태로 주기억장치에 생성된것
  
		  [<클래스이름> alloc];
		  
		  
2)객체초기화

  * 메모리공간을 초기화 시켜줌.
 
		  [객체 init];
		  
		  
3)객체생성 및 초기화
 
  * 객체에 들어가는 메모리 공간을 확보하고, 확보된 메모리의 데이터를 초기화 한뒤 주소값을 알려줌
  
		   [[Person alloc] init];
		   
		   //init는 메소드 명이다. 나중에 오버라이드하여 자신의 목적에 맞게 사용할 수 있다.
		   
4)변수생성
 
  * 생성된 객체를 지속적으로 사용하기 위해 변수 또는 상수에 담아둬야함.
  
		  <데이터타입> *<변수이름> = <객체의 주소>;
		  
		  //여기서 *은 주소값이 저장되어 있다고 알려주는것
		  
		  Person *me = [[Person alloc] init];

 5)프로퍼티 접근
  
  * 객체가 되었을 때 가지는 상태값을 set하고 get하기 위한것.

		  Person *p1 = [[Person alloc] init];
		  
		  me.name = @"김직박구리"
		  me.age = @30;
		  me.asset = @1000;
		  
		  //메서드 실행
		  
		  [p1 sleep];
  
  

 
5.퀵헬프

* 튜토리얼 : objective - c 기준!

   http://goo.gl/idJNx7

   http://goo.gl/ENEuFd

   http://goo.gl/N93iuO


  
 