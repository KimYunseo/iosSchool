Block
====

1.block

 * objective c 에서 블록은 객체이다.
 * 외부 값을 capture해서 사용
 * 코드 관리 면에서 강점
 * GCD를 사용할 때 블럭 기반으로 함


2.문법

```objc
void (^simpleBlock) (void);
//앞의 void는 리턴 타입, (void)는 입력 타입, simpleBlock은 블럭문 명
simpleblock = ^{
	NSLog(@"This is a block");
};

/*
 *합쳤을 경우
 */

void (^simpleBlock) (void) = ^{
	NSLog(@"This is a block");
}
/*
  ^{
	  NSLog(@"This is a block");
  } 는 객체!
*/

simpleBlock()
```

Thread
=====
