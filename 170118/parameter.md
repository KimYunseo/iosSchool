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
