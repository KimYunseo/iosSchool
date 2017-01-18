1.매개변수

정의 : 부가적인 정보

이유 : 객체가 특정행위를 하려면 부가적인 정보가 필요함. 즉, 메서드를 호출할 때 부가적인 정보를 보내기 위해 매개변수를 사용한다.

`-` (<반환타입>)메서드 이름:(<타입>)<내부이름> <외부이름>:<내부이름>:....;

2.매개변수 메서드 정의

- (void)magicAttackTo:(Orc *)orc byMagicArrow:(Magic *)magicArrow;

3.매개변수 메서드 구현

- (void)magicAttackTo:(Orc *)orc byMagicArrow:(Magic *)magicArrow{

//마법 공격을 하면 마법공격력+마법스킬공격력 - 마법디펜스가 총 데미지가 됨.
NSUInteger damage = self.mAp + magicArrow.magicArrowDamage - orc.mDef;
orc.hp = orc.hp - damage;
NSLog(@"%@은 마법화살 공격을 받아 %lu의 데미지를 입어 HP가 %lu가 되었다.\n", orc.name, damage, orc.hp);

//휴먼의 mp가 줄어드는것을 구현
self.mp = self.mp - magicArrow.magicArrowMp;
NSLog(@"%@는 마법화살을 사용하여 %lu의 MP를 소모하여 %lu의 MP가 남았습니다.\n\n", self.name, magicArrow.magicArrowMp, self.mp);

}

4.메서드 호출

`Human *h1 = [[Human alloc] init];`
h1.name = @"인간마법사 뿌뿌뿡";
h1.hp = 250;
h1.mp = 150;
h1.mAp = 10;
h1.mDef = 5;

`Orc *o1 = [[Orc alloc] init];`
o1.name = @"오크마법사 큐티엔젤";
o1.hp = 300;
o1.mp = 100;
o1.mAp = 7;
o1.mDef = 7;

`Magic *magicSkill = [[Magic alloc] init];`
magicSkill.magicArrowDamage = 10;
magicSkill.magicArrowMp = 5;

'[h1 magicAttackTo:o1 byMagicArrow:magicSkill];'

`전체코드는 같이 첨부된 문서 안에 있음`

5.데이터 타입

데이터가 메모리에 저장되어 있는 형태

6.데이터 타입의 종류

1)값형 : 메모리에 값이 들어가는것 (1, -13, 3.141592, YES(1))

* BOOL : YES or NO (c언어의 TRUE FALSE와 대응)

* 숫자표현

 * 정수 : NSInteger(부호있는 것), NSUInteger(부호 없는것)

 * 실수 : CGFloat

2)참조형 : 메모리에 값이 아닌 주소값(referance)이 들어감

* 숫자형 : NSNumber (NSNumber *asv = @3;)

* 문자열 : NSString (NSString *btc = @"hahaha";")

* 사용자클래스. `'예 : 매개변수에서  (Orc *)orc'`

* id : 모든 객체 타입을 의미함

7.형식지정자

['형식지정자'](https://developer.apple.com/library/content/documentation/Cocoa/Conceptual/Strings/Articles/formatSpecifiers.html){: target="_blank" }

8.확장문자

| 확장문자  |  Represents | 의미 |
|:-:|:-:|:-:|
| \0  | NULL  | 공백 문자 |
| \a |  Bell (alert) | 경보 문자  |
| \b  | Backspace  | 백스페이스  |
| \f  | Formfeed |  새 페이지로 |
| \n  | New line | 다음 줄로  |
| \r  | Carriage return  | 현재 행의 처음으로  |
| \t  | Horizontal tab  | 수평 탭 문자  |
| \v  | Vertical tab  | 수직 탭 문자  |
| \'  | Single quotation mark  | 작은 따옴표  |
| \ "  | Double quotation mark  | 큰 따옴표  |
| \\  | Backslash  | 백슬래쉬  |
| \?  | Literal question mark  | 물음표  |
| \ ooo  | ASCII character in octal notation  | 아스키 문자의 8진수 표기  |
| \xhh  |  ASCII character in hexadecimal notation | 아스키 문자의 16진수 표기  |


9.@class

@class Human;

* 현재 파일에 Human이라는 클래스(파일)가 존재 한다고 알려주는것 프로퍼티가 무엇인지 메서드가 무엇인지는 알려주지 않음.

`#import Humnan.h;`

* 현재 파일에 Human클래스 헤더파일에 있는 프로퍼티 및 메서드 등의 내용을 읽어 들이는것.

-왜 사용하는가?

* 메개변수 사용시 두 클래스 모두에 import하면 계속해서 읽어들이기만하여 무한루프 생성가능

10.self

* 객체 스스로 자신을 지칭할 때 사용하는 키워드

* `[self someMethod:value];` : 자신의 메서드 호출

* self.someProperty : 자신의 프로퍼티 접근

11.다형성

* 프로그램 언어의 각 요소들(상수, 변수, 식, 오브젝트, 함수, 메소드 등)이 다양한 데이터 타입에 속하는 것이 허가되는 성질.

* 다형성이란 하나의 메소드나 클래스가 있을 때 이것들이 다양한 방법으로 동작하는 것을 의미한다. 키보드의 키를 통해서 비유를 들어보겠다. 키보드의 키를 사용하는 방법은 '누른다'이다. 하지만 똑같은 동작 방법의 키라고 하더라도 ESC는 취소를 ENTER는 실행의 목적을 가지고 있다. 즉, 동일한 조작방법으로 동작시키지만 동작방법은 다른 것을 의미한다.
>출처 : https://opentutorials.org/module/516/6127
['다형성'](https://opentutorials.org/module/516/6127){: target="_blank" }

@class Orc;

@class Magic;

@interface Human : NSObject

@property NSString *name;

@property NSUInteger hp;

@property NSUInteger mp;

@property NSUInteger mAp;

@property NSUInteger mDef;


Vs.

@class Human;

@class Magic;

@interface Orc : NSObject

@property NSString *name;

@property NSUInteger hp;

@property NSUInteger mp;

@property NSUInteger mAp;

@property NSUInteger mDef;


-오버로딩

* objective - c의 경우 오버로딩을 지원하지 않는다.

* 동일한 이름의 함수를 중복 선언이 가능한 것을 오버로딩이라고 한다. 지원되지 않는경우 유사한 긴능을 처리하기 위한 함수가 지나치게 많아진다는 단점이 있다.

* 오버로딩은 함수명은 동일하나 파라미터의 수가 다르거나, 파라미터의 자료형을 다르게 하여 구별한다.

-오버라이딩

* 상속관계에서 하위 클래스는 상위 클래스의 모든 공개요소를 상속 받는다. 하위클래스는 상속 받은 요소를 사용하기는하나 하위 클래스 구현에 적합하지 않을 수 있다. 이때 상속받은 요소를 재정의 하는것을 오버라이딩이라고 한다.

* objective - c에서 재정의할 수 있는것은 메서드로 제한한다.

* 오버라이딩된 메소드를 표시하는 키워드가 없기 때문에 이를 확인하기 위해서는 상위 클래스의 선언을 참고해야한다.


