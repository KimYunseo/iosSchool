UIButton
========
##목차

Ⅰ


Ⅱ. Symbols

1.Creating Buttons

2.Configuring the Button Title

3.contfigutingnButton Presentation

4.Getting the Current State

5.Getting Dimensions

6.Deprecated Properties

7.Constants



---------

Ⅱ. Symbols

1.Creating Buttons

```objc
 + (instancetype)buttonWithType:(UIButtonType)buttonType;

//특정 타입의 새로운 버트을 만들기 위한 클래스 메소드
/* 버튼 타입 종류
typedef enum UIButtonType : NSInteger {
    UIButtonTypeCustom = 0,
    UIButtonTypeSystem,
    UIButtonTypeDetailDisclosure,
    UIButtonTypeInfoLight,
    UIButtonTypeInfoDark,
    UIButtonTypeContactAdd,
    UIButtonTypeRoundedRect = UIButtonTypeSystem
} UIButtonType;
*/
```

2.Configuring the Button Title

```objc
@property(nonatomic, readonly, strong) UILabel *titleLabel;
```
titleLabel은 readonly이다. 따라서 메소드를 통해 text값과 색을 넣는다.

```objc
- (void)setTitle:(NSString *)title forState:(UIControlState)state;

텍스트 값을 넣기 위한 인스턴스 메소드

UIControlState의 종류
typedef enum UIControlState : NSUInteger {
    UIControlStateNormal = 0,
    UIControlStateHighlighted = 1 << 0,
    UIControlStateDisabled = 1 << 1,
    UIControlStateSelected = 1 << 2,
    UIControlStateFocused = 1 << 3,
    UIControlStateApplication = 0x00FF0000,
    UIControlStateReserved = 0xFF000000
} UIControlState;
```

```objc


```

3.contfigutingnButton Presentation

4.Getting the Current State

5.Getting Dimensions

6.Deprecated Properties

7.Constants
