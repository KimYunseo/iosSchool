iOS 구조파악
==========

1.The Structure of an App - MVC

![MVC](https://developer.apple.com/library/content/documentation/iPhone/Conceptual/iPhoneOSProgrammingGuide/Art/core_objects_2x.png)
> 그림출처 https://developer.apple.com/library/content/documentation/iPhone/Conceptual/iPhoneOSProgrammingGuide/TheAppLifeCycle/TheAppLifeCycle.html

1)UIApplication object

* Event loop 관리
* delegate에 앱 상태변화 및 푸쉬알림 같은 주요 이벤트들을 알려줌
* 서브클래싱 없이 UIApplication 객체를 그대로 사용.

2)App delegate object

* custome 코드의 핵심 
* UIApplication객체와 함께 앱 초기화, 앱 상태변화, 이벤트등 관리
* delegate object는 앱당 하나만 존재
* 앱 초기 자료구조를 초기화하는 데 사용

3)Documents and data model objects

* 앱의 컨텐츠 저장하고, 앱 마다 고유함
* 뱅킹앱의 경우 거래 관련 데이터베이스가 저장 될 수 있고, 그림그리는 앱의 경우 그리는데에 필요한 명령어 들이 저장될 수 있다.

4)View controller objects

* 앱 내용을 화면에 나타내는 기능을 함.
* 하나의 View controller는 하나의 뷰와 이 뷰의 서브뷰를 관리함.
* 화면에 뷰가 표시될 때 view controller객체는 뷰들을 앱의 window에 설치함으로써 보여지게 해줍니다.
* UIViewController 클래스는 모든 view controller객체의 부모클래스
* 뷰를 로드하고, 출력, 회전 등의 기본 동작 기능을 제공함

5)UIWindow object

* 화면에 출력되는 뷰들을 다룸
* 앱은 Main screen에 해당하는 한개의 Window를 가짐.
* 외부 디스플레이 지원을 위한 추가 window 가질 수 있음.
* 앱 컨텐츠 변경시 view controller를 사용하여 변경(절대 window를 변경하면 안됨)
* UIApplication객체와 같이 작동하여 view controller와 view에게 이벤트를 전달하는 역할 또한 함

6)View objects, control objects, and layer objects

*  View와 Control은 앱 컨텐츠 중 시각적인 부분을 제공
*  View는 지정된 사각형(frame)의 공간에 내용물을 그리고 그 프레임 안의 이벤트에 응답하는 객체입니다. 
*  Control은 Button, Text field, toggl switch와 같은 특정한 역할을 담당하는 View를 말합니다. 
* UIView또는 UIView의 서브클래스(Button, Label 등)를 상속받아 커스텀 뷰를 작성할 수도 있습니다. 

* 앱은 Core Animation layer를 view와 control의 계층에 포함시킬 수 있음
* Layer 객체는 시각적 요소에 대한 Data객체임. View는 Scene의 뒷부분에서 이 layer객체를 사용하여 컨텐츠내용을 나타낸다.
* 애니메이션이나 다른 시각적 효과를 보여주기 위해 커스텀 layer객체를 만들어 사용할 수 있다.

> http://rhammer.tistory.com/94 의 해석 내용과, 원본인 https://developer.apple.com/library/content/documentation/iPhone/Conceptual/iPhoneOSProgrammingGuide/TheAppLifeCycle/TheAppLifeCycle.html 내용을 참고해 재 작성.


2.Step of After Launch

![SAL](https://i.stack.imgur.com/wYKPZ.png)

* main이 didFinshLaunchingWithOptions: 보다 먼저 실행된다는 것을 기억!!
* 개발은 didFinshLaunchingWithOptions: 에서 시작된다.

3.화면구조

![화면구조](https://developer.apple.com/library/content/featuredarticles/ViewControllerPGforiPhoneOS/Art/VCPG-root-view-controller_2-1_2x.png)

4.사용자 Event 처리

![사용자 Event 처리](https://developer.apple.com/library/content/documentation/iPhone/Conceptual/iPhoneOSProgrammingGuide/Art/event_draw_cycle_a_2x.png)

UI Base Guide
==============

1.Resolutions(해상도)

* Pixel : 실제 이미지 사이즈
* Point : 화면에 표시되는 이미지 사이즈

![Resolutions](http://cfile2.uf.tistory.com/image/22475E4C587C846C16C2DA)


2.좌표계

![좌표계](https://developer.apple.com/library/content/documentation/2DDrawing/Conceptual/DrawingPrintingiOS/Art/coordinate_differences_2x.png)

* View 기준 좌측 상단 0, 0이다.
* 뷰의 위치는 상대적으로 상위뷰를 기준으로 위치를 잡는다. 즉, 서브뷰는 부모 뷰의 좌측 상단을 기준으로 함.

> 해상도 관련 보면 좋은 곳 http://m.blog.naver.com/purplestudiogames/220703864393


View
===

1.UIKit Framework

* Cocoa Touch Framework에 추가된 UI관련 기능의 클래스가 모여 있는 Framework

```objc
#import <UIKit/UIKit.h>
```

2.UI Class Hierarchy

![UI Class Hierarchy](http://pds16.egloos.com/pds/201002/05/68/a0037268_4b6b91c3db151.jpg)


