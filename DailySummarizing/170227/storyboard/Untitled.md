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
![dock]()

* storyboard에서 로드된 모든 객체와 마찬가지로, storyboard에서 로드된 뷰컨트롤러의 초기화를 완료하려면 awakeFromNib에서 오버라이드하면 된다. 

4.두 scene사이의 이동은 segue가 관리한다.

* segue로 이동의 형태(예 : modal, push)를 설정할 수 있다.
* segue객체를 custom transition 실행을 위한 subclass 할 수 있다.

* prepareForSegue:sender: 메소드를 사용하여 segue가 트리거 될때 뷰컨트롤러에 대해 발동하는 scene사이에서 데이터를 이동할 수 있다.
 * 이 메서드는 다음 뷰컨트롤러가 스크린에 나타나기 전에 다음 뷰컨트롤러의 설정을 customize할 수 있다. 

* 보통 이동은 버튼이 탭되어지는 것과 같이 몇몇 이벤트의 결과로 발생한다. 그러나 뷰컨트롤러에서 performSegueWithIdentifier:sender: 메서드를 호출하여 programmatically 방식으로 할 수 있다.  

