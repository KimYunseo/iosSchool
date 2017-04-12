Storyboard
=====

1.storyboard란?

* iOS application의 사용자 인터페이스를 시각적으로 보여주고,콘텐츠 화면과 해당 화면 간의 연결을 보여줌.

* 스토리 보드는 연속적인(sequence) screen으로 구성되며, 각 screen은 뷰컨트롤러와 뷰를 나타낸다. 

* 사용자 인터페이스를 디자인할 때 storyboard를 사용하는것을 권장한다.(apple developer 공식입장)
 * 이유는 한 캔버스에 사용자 인터페이스의 모양과 흐름을 시각화 할 수 있기 때문이다.

2.segue란?

* screen은 segue객체로 연결된다. segue는 두 뷰컨트롤러간 이동을 나타낸다.

![segue](https://developer.apple.com/library/content/documentation/General/Conceptual/Devpedia-CocoaApp/Art/storyboard.jpg)

3.Single 뷰컨트롤러와 해당 뷰에 부합하는 Scene

* iPhone에서 각 Scene은 전체 화면의 내용에 일치한다. 
* iPad에서 한번에 여러 Scene을 화면에 나타낼수 있다.
 * 예 : popover view controllers

* 각 scene에는 dock이 있다.
 * 이 dock은 scene의 최상위 객체를 나타내는 아이콘을 나타낸다. 
 * 주로 뷰컨트롤러와 해당 뷰 사이의 액션과 outlet 연결을 만들기 위해 사용된다.
 * 현재 dock의 모양은 아래 그림과 같다.
![dock](https://github.com/KimYunseo/iosSchool/blob/master/DailySummarizing/170227/storyboard/Dock.png?raw=true)

* storyboard에서 로드된 모든 객체와 마찬가지로, storyboard에서 로드된 뷰컨트롤러의 초기화를 완료하려면 awakeFromNib에서 오버라이드하면 된다. 

4.두 scene사이의 이동은 segue가 관리한다.

* segue로 이동의 형태(예 : modal, push)를 설정할 수 있다.
* segue객체를 custom transition 실행을 위한 subclass 할 수 있다.

* prepareForSegue:sender: 메소드를 사용하여 segue가 트리거 될때 뷰컨트롤러에 대해 발동하는 scene사이에서 데이터를 이동할 수 있다.
 * 이 메서드는 다음 뷰컨트롤러가 스크린에 나타나기 전에 다음 뷰컨트롤러의 설정을 customize할 수 있다. 

* 보통 이동은 버튼이 탭되어지는 것과 같이 몇몇 이벤트의 결과로 발생한다. 그러나 뷰컨트롤러에서 performSegueWithIdentifier:sender: 메서드를 호출하여 programmatically 방식으로 할 수 있다.  

UIStoryboard
==
* UIStoryboard 객체는 Interface Builder 스토리 보드 리소스 파일에 저장된 뷰 컨트롤러 그래프를 캡슐화한다.
* 뷰컨트롤러 그래프는 application interface의 전체 혹은 일부를 위한 뷰컨트롤러들을 나타낸다.

* 보통 스토리보드의 뷰컨트롤러들은 인스턴스 이다.
그리고뷰컨트롤러들은 스토리보드 내 에서 스스로 정의된 행동으로 자동적으로 생성된다.

* 그러나 스토리 보드 객체를 사용하여 스토리 보드 파일 안에서 초기 뷰컨트롤러를 인스턴스화하거나 프로그래밍 방식으로 나타내기 원한다면 다른 뷰컨트롤러를 인스턴스화 할 수 있습니다.


* 스토리보드 객체를 얻기 위한 메소드

	+storyboardWithName:bundle:
	
	   : 특정 스토리보드 리소스파일을 위한 스토리보드 객체를 생성하고 반환하는 메소드

* 스토리보드 뷰컨트롤러를 인스턴스화 하기위한 메소드
	-instantiateInitialViewController
	
	   :뷰컨트롤러 그래프 안의 초기 뷰컨트롤러(initial view controller)를 인스턴스화 하고 반환함.
	initial view controller란 스토리보트 파일에 무조건 있어야하는 starting point가 되는 뷰컨트롤러를 말한다.
	
	-instantiateViewControllerWithIdentifier:
	
	   :특정 식별자에 해당하는 뷰컨트롤러를 인스턴스화 하고 반환한다.

UIStoryboardSegue
====

* 정의
 
 두 뷰컨트롤러간 시각적 전환에 대해 준비하고 실행한다.
 
* 개요

 * UIStoryboardSegue 클래스는 UIKit에서 사용할 수 있는 표준 시각적 전환을 지원한다.
 * 스토리보드 파일에서 뷰컨트롤러 간 사용자 정의 전환(custom transitions)를 정의하기 위해 subclass할 수 있다.
 * segue의 객체는 뷰컨트로러들의 전환에 대한 정보를 포함한다. 
 * segue가 트리거 된 때,그러나 시각적 전환이 전에, 스토리보드 런타임은 현재 뷰컨트롤러에서  prepareForSegue:sender:를 호출하여 필요한 데이터를 보여질 뷰컨트롤러에 전달할 수 있다.
 * 직접 segue 객체를 생성하지 말라.
 * 대신, 스토리보드 런타임은 두 뷰 컨트롤러 사이에서 수행되어야만 할 때 segue객체를 생성한다.
 * 