1.objective-c class file

|.h	| 헤더파일. 클래스, 타입, 함수, 상수를 선언함|
|:-:|:-:|
| .m| 소스파일. objective-c와 C 소스파일를 위한 전형적인 확장자.  	|
| .mm	| C++ 라이브러리를 사용할 수 있는 확장자	|

2.헤더파일 추가

* `#import` 지시어로 사용
* Framework의 경우 `#import <Framework명>`으로 사용.
* 다른클래스의 경우 `@class "클래스파일.h"`으로 사용.
* 헤더파일의 모든 내용(특성, 메서드 등)을 알 수 있다.

3.@class 사용

* 양쪽이 서로 import를 할 경우(순환참조)에 문제가 생긴다. 
* @class name
* 해당 클래스의 존재(이름 만)를 알려준다.
* 실제 사용 위해 .m 파일에 `#import` 시켜야 한다.

4.objective-c class특징

* .m .h와는 다른 구분이라는 것을 명심

 -이유

 * interface :  .m과 .h에 사용가능
 * implementation : .h에는 사용 못한다.

5.선언부 - interface

* 클래스를 선언한다.(상속 관계와 프로토콜 선언)
* 객체와 통신할 메서드를 선언한다.
* Property 변수를 선언한다.
* .h파일 안에 작성된다.

6.interface 구조

		
		//interface 시작 				 부모클래스
		@interface ClassCalcultor : NSObject
		
		//property
		@property CGFloat mathmaticth;
		@property CGFloat cLanguage;
		@property CGFloat algorithm;
		@property CGFloat bioTecnology;
		
		//method
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
		 @end
		 //interface 종료


7.구현부 - implementation

* 클래스의 메서드를 구현하는 실제 코드 담겨 있다.

		//implementation 시작
		@implementation ClassCalcultor
		
		//인스턴스 method 구현
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
		
		implementation 종료
		@end
		
		
8.메소드

* 컴퓨터가 수행할 명령어
* 인스턴스에 적용(-)되거나, 클래스에 적용(+)되는 행동으로 나눌 수 있다.
* 객체는 보통 자기자신만 접근 가능하지만, 메서드를 통해 상대방 객체와 데이터를 통신한다.

		- (NSInteger)doubleNum:(NSInteger)number
		//<	반환타입>				|    매개변수     |
		{
			return number; 
		}
* 결과값 반환은 return키워드를 사용하며 반환 타입과 같은 타입만 사용가능
* return키워드 사용시 그 이후 작성된 코드는 실행되지 않으며 메소드를 종료한다.

9.캐스팅

* 작성된 타입과 이름 넣기 위한 타입이 서로 상이할 때, 이 서로 다른 타입을 맞추기 위해 사용한다.

 -업캐스팅
 
 * 서브클래스가 슈퍼클래스로 변환되는것
 
			Person.h
			#import <Foundation/Foundation.h>
			
			@interface Person : NSObject
			
			@property NSString *name;
			
			@end
	
			---------------------------------------
			Student.h
			
			#import <Foundation/Foundation.h>
			#import "Person.h"
			
			@interface Student : Person
			
			@property NSString *grade;
	  		
	  		
	  		-------------------------------------
			main.m
			#import <Foundation/Foundation.h>
			#import "Person.h"
			#import "Student.h"
			
			int main(int argc, const char * argv[]) {
			    @autoreleasepool {
			
			        
			        Student *s1 = [[Student alloc] init];
			        
			        //upcasting
			        Person *s2=s1;
			        s2.name = @"원빈";
			        
			        //superclass를 받아오기 때문에 이부분 오류 나온다.
			        s2.grade = @"대학교졸업";
			        
			        NSLog(@"%@", s2.name);
			        
			        //따라서 여기 grade 부분이 오류가 난다.
			        NSLog(@"%@", s2.grade); 

* 즉, 상위클래스를 받아 오기 때문에 grade 부분에서 오류가 난다.

10.클래스 메소드 Vs. 인스턴스 메소드

-클래스 메소드
  
* `+` (id)classMethod;
* [클래스 메소드];
* 인스턴스 속성에 상관없이 클래스 자체에 필요한 행위를 정의시 사용함.
* 즉, 객체를 만들지 않고 사용! 단, 프로퍼티를 사용하지 못한다.

-인스턴스 메소드사용

*  `-` (id)instanceMethod;
*  [객체 메소드];
*  얘는 객체를 꼭 만들어야 한다.