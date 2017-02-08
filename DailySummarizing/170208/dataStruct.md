자료구조 기초
=====

Ⅰ.링크로 데이터 접근하기(pointer)

1.Memory구조

|	STACK	|
|:-:|
|	HEAP |
|	DATA|
|	CODE|

- stack 영역 : 지역변수, 매개변수 등

- heap 영역 : 동적할당을 위한 영역. 유돈적인 데이터와 사이즈, 객체(인스턴스)가 들어간다.

- data 영역 : 전역변수, 정적 변수가 저장. 

- code 영역 : 프로그램 code 저장.

2.Memory구조 파악

```objc
NSInteger a =4;
NSInteger b; //두개의 코드가 실행 되면
```
|	STACK	| <- a= 4, b   (값은 스택영역에 들어간다.)|
|:-:| :-: |
|	HEAP | |
|	DATA| |
|	CODE| <- 프로그램 코드 NSInteger a =4; NSInteger b;|

```objc
   Person *person = [[Person alloc] init];
// |<- 객체 ->    |  |   <-인스턴스->       |
// Person `객체`는  힙영역에 들어가고, 
// person 변수는 스택 영역에 들어가며,
// 전체 코드는 CODE 영역에 들어간다.

```
|	STACK	| <- person 변수|
|:-:| :-: |
|	HEAP | Person `객체`|
|	DATA| |
|	CODE| <-  전체 코드|

```objc
  static NSInteger number = 5;

// 전역변수 설정 : 한번 만들어지면 프로그램 종료까지 남는다. 데이터 영역에 들어간다.
```

|	STACK	| |
|:-:| :-: |
|	HEAP | |
|	DATA| <- number = 5|
|	CODE| <-  전체 코드|

```objc
- (NSInteger)sumTwoInteger:(NSInteger)num1
			            num2:(NSInteger)num2
{
	NSLog(@"%ld", num1 + num2);
	return num1 +num2;
}
			            
```

|	STACK	| <- num1 + num2|
|:-:| :-: |
|	HEAP | |
|	DATA| |
|	CODE| <-  전체 코드|

3.Pointer

* 메모리 공간주소를 가리키는 변수 (주소)


