리터럴 문법
===
 
 1.리터럴 정의
 
* 컴파일시 프로그램 내에 정의되어 있는 그대로 정확히 해석되어야 할 값을 의미한다. 이에 비해, 변수란 프로그램의 실행 중에 상황에 따라 다른 값들을 표현할 수 있으며, 상수는 프로그램 실행 중 늘 같은 값을 표현한다. 그러나 리터럴은 명칭이 아니라, 값 그 자체이다.

* 리터럴은 숫자, 문자 , 객체와 같이, 해당 타입에 해당하는 변
 z수에 값을 설정할 때 그 때의 값을 말한다.
 
* int i =4 ; 일때, i는 int타입의 데이터이지만 리터널은 아니다. 그 값 자체인 4가 리터럴이다.
 
 
2.리터럴 문법

1)NSNumber Literals

* char값, 정수값, 실수값, bOOL등의 값을 객체에 감싼것

```objc
// character literals
    NSNumber *theLetterZ = @'Z';
    // = [NSNumber numberWithChar:'Z'];

    // integral literals
    NSNumebr *fortyTwo = @42;
    // = [NSNumner numberWithInt:42];

    NSNumber *fortyTwoUnsigned = @42U;
    // = [NSNumber numberwithUnsignedInt:42U];

    NSNumebr *fortyTwoLong = @42L;
    // = [NSNumebr numberWithLong:42L];

    NSNumber *fortyTwoLongLong = 42LL;
    // = [NSNumber numberWithLongLong:42LL];

    // floating point literals
    NSNumber *piFloat = @3.141592654F;
    // = [NSNumber numberWithFloat:3.141592654F];

    NSNumber *piDouble = @3.141592654;
    // = [NSNumber numberWithDouble:3.141592654];

    // BOOL
    NSNumber *yesNumber = @YES;
    // = [NSNumber numberWithBOOL:YES];
    
```

* 즉, 숫자 값 앞에 @를 붙여 `객체 리터럴`을 만든다.

