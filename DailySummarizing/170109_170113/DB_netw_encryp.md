1.데이터베이스

-정의

 * 자료구조 : 대부분 주기억 장치에서 이루어질 내용

 * 데이터베이스 : 대부분 보조기억장치에서 이루어질 내용

 * 즉, 데이터베이스는 데이터를 체계적으로 저장하고 관리하며, 빠르고 정확하게 불러올 수 있도록 구조화 시킨것.

-관계형 - SQL을 사용하여 질의

![다이어그램](http://cfile8.uf.tistory.com/image/135950274B6291170B821D)

-NoSQL : 키-값형, 객체형, 문서형, 컬럼형

-DBMS

 * Data Base에 접근할 수 있는 기능을 제공하는 소프트웨어.

 * 즉, 데이터베이스계의 운영체제

 * 종류 : MySQL, MariaDB, Oracle,...

-SQL

 * Structured Query Language

 * DBMS를 통해 데이터를 관리하기 위한 구조화된 질문을 작성하기 위한 언어

 * 관계형 데이터베이스 관리 시스템에서 사용

 * 종류

  ①DDL (Data Definition Language) : 데이터베이스 객체(테이블,뷰,인덱스..)의 구조를 정의 함.

  |  SQL문 |  내 용 |
  |:-:|:-:|
  |  CREATE | 데이터베이스 객체를 생성  |
  |  DROP |  데이터베이스 객체를 삭제 |
  | ALTER  | 기존에 존재하는 데이터베이스 객체를 다시 정의하는역할을 합니다.  |


  ②DML (Data Manipulation Language) : 데이터의 삽입,삭제,갱신등을 처리

  | SQL문  |  내 용 |
  |:-:|:-:|
  |  INSERT | 데이터베이스 객체에 데이터를 입력 한다.  |
  |  DELETE |  데이터베이스 객체의 데이터를 삭제 한다. |
  |  UPDATE | 데이터베이스 객체안의 데이터 수정 한다.  |

  ③DCL (Data Control Language) : 데이터베이스 사용자의 권한을 제어

  | SQL문  |  내 용 |
  |:-:|:-:|
  |  GRANT | 데이터베이스 객체에 권한을 부여 한다.  |
  |  REVOKE |  이미 부여된 데이터베이스 객체 권한을 취소한다. |


2.네트워크

-LAN : 근거리 통신망

-WAN : 광역통신망


-Server 

 * 클라이언트에게 네트워크를 통해 정보나 서비스를 제공하는 컴퓨터(server computer) 또는 프로그램(server program)

-Client

 * 네트워크를 통하여 서버라는 다른 컴퓨터 시스템 상의 원격 서비스에 접속할 수 있는 응용 프로그램이나 서비스

-Internet

 * 컴퓨터로 연결하는 TCP/IP 프로토콜을 이용해 정보를 주고받는 네트워크

-TCP/IP

 * TCP : 전송제어 프로토콜

 * IP : 인터넷 프로토콜

-WWW

 * world wide web

 * 문서(웹페이지)들이 있는 정보의 저장소

 * 분산과 연결

 * 분산 : 정보를 제공하는 주체가 많아 분산되어 있다.

-URL

 * Uniform Resource Locator

 * `[Protocol]`://`[HOST]`:`[Port]`/`[Path]`

 * http://www.daum.net:80/map

 * ftp://id:pw@192.168.1.10:777/mydir

 * file://localhost/movie/baseball.avi

-URI(Uniform Resource Identifier) [통합자원식별자](https://ko.wikipedia.org/wiki/%ED%86%B5%ED%95%A9_%EC%9E%90%EC%9B%90_%EC%8B%9D%EB%B3%84%EC%9E%90)

 * 인터넷에 있는 자원을 나타내는 유일한 주소. 자원을 식별할 수 있는 문자열

 * 어떤 하나의 리소스를 식별할 수 있는 어떤것. 웹상의 자료가 어떤 자료가 식별할 수 있는것, 그것을 정확히 표현할 수 있는 주소

-URL URI차이점

 * http://ko.wikipedia.org/ 라는 주소는 URI이면서 URL.

 * https://www.google.co.kr/search?q=uri 에서 https://www.google.co.kr/search 까지는 URL, 원하는 정보를 얻기 위해선 q=uri라는 식별자 필요하므로 https://www.google.co.kr/search?q=uri 는 URI

 * URI = URL+URN

-Protocol

 * 통신규약

 * 장비사이에서 메시지를 주고 받는 양식과 규칙의 체계. 즉, 네트워킹할 때 정해진 메시지 규칙

 * http, https, ftp, sftp

-HTTP(hyper text transfer protocol)

 * 하이퍼본문전송규약

 * WWW 상에서 정보를 주고받을 수 있는 프로토콜이다. 주로 HTML 문서를 주고받는 데에 쓰인다. TCP와 UDP를 사용하며, 80번 포트를 사용한다. 

 * GET

  -요청 URI의 정보를 가져온다

   클라이언트로부터의 데이터를 이름과 값이 결합된 스트링 형태로 전달

   <FORM> 태그의 “METHOD” 속성의 값으로는 “GET”을 입력 

   <FORM NAME="form1" ACTION="test.jsp" METHOD="GET"> 

   전송 데이터 양: 255자 (현재는 HTTP/1.1 이고, 이는 IE(Internet Exprolor) 에서 2048자까지 get방식으로 전송할 수 있다.

   여기서 말하는 2048자 : 주소값과 파라미터 이다.)

   데이터베이스에 대한 질의어 데이터와 같은 요청 자체를 위한 정보를 전송할 때 사용

   데이터가 주소 입력란에 표시되므로 최소한의 보안도 유지되지 않음. GET의 경우 패킷의 헤드부분에 정보를 넣어(=?정보) 보내기 때문.

   cashing한 것을 받아오기 때문에 빠르게 받을 수 있지만, 최신데이터가 아닐 수 있다.

 * POST

  요청 URI의 리소스의 새로운 정보를 보낸다.

  클라이언트와 서버간에 인코딩하여 서버로 전송

  해더를 통해 전송되는 방식

  <FORM> 태그의 “METHOD” 속성의 값으로는 “POST”를 입력

   ex)  <FORM NAME="form1" ACTION="test.jsp" METHOD="POST">

  전송 데이터 양: 제한 없음

  데이터베이스에 대한 갱신 작업과 같은 서버측에서의 정보 갱신 작업을 원할 때 사용

  패킷에 바디 부분에 정보 등이 들어 가기 때문에 GET에 비해 정보를 감출 수 있다.

  POST 방식을 사용하면 GET 방식에 비해 상대적으로 처리 속도가 늦어짐

  POST 방식 : 클라이언트 측에서 데이터를 인코딩 → 서버측에서 디코딩

 * PUT

  요청 URI에 저장될 정보를 보낸다.

 * DELETE

  요청 URI의 리소스를 삭제한다.

 * HEAD : GET 요청에서 body는 제외하고 헤더만 가져온다.

 * TRACE : 보낸 메시지를 다시 돌려보낸다.

 * OPTIONS : 요청 URI에서 사용할 수 있는 Method를 물어본다.

 * CONNECT : 프록시에 사용하기 위해 예약된 메서드이다.

-FTP

 * file transfer protocol

 * 암호화 되지 않고 전송 => 보안을 위해 sftp

-TELNET

 * TErminaL NETwork

 * 원격로그인을 위한 프로토콜

-SSH

 * secure shell

 * 네트워크상 다른 컴퓨터에 로그안하거나 원격시스템에서 명령을 실행하고 다른 시스템으로 파일을 복사할 수 있도록 해주는 응용프로그램 또는 그 프로토콜

 * telnet의 대용목적으로 사용(telnet의 보안 문제 때문에)

-SSL

 * secure soket layer

 * 웹서버와 브라우저 사이의 보안을 위한 프로토콜

-HOST 

 * 호스트 : 네트워크에 연결된 장치

 * 호스트이름 : 네트워크에 연결된 장치에 부여된 고유한 이름(pc, 네비, 스마트폰 등)

 * 예)IP주소, 도메인주소, MAC주소

-IP Adress

 * 컴퓨터 네트워크에서 장치들이 서로를 인식하고 통신을 하기 위해 사용하는 번호

-도메인주소

 * 네트워크상에서 컴퓨터를 식별하는 호스트이름. 사람이 볼 수 있도록 문자로 바꾼것

-DNS

 *Domain Name System

 * 호스트의 도메인 이름을 호스트의 네트워크 주소로 바꾸거나 그 반대의 변환을 수행

-MAC Adress

 * Media Access Control Address

 * 네트워크 어댑터에 붙은 식별자

-Port

 * 가상의 논리적 통신 연결단. 0~65536

 * 인터넷이나 기타 다른 네트웍 메시지가 서버에 도착하였을 때, 전달되어야할 특정 프로세스를 인식하기 위한 방법

 * 정해진 Port가 아닌 다른 Port로 들어가면 거절된다.


3.암호화

-대칭키암호화

 * 암호화와 복호화에 동일한 암호키를 사용하는 알고리즘

 * DES, AES, SEED

-비대칭키(공개키) 암호화

 * 공개키로 암호화된 데이터를 비밀키로 사용하여 복호화 할 수 있는 암호화 알고리즘

 * RSA 등 <- SSL에 사용

-암호화 해시함수

 * 임의의 데이터를 고정된 길이의 데이터로 매핑하여 원래의 입력값과 관계를 찾기 어렵게 만든것

 * SHA, MD5


학습링크
======

-데이터베이스 : https://goo.gl/tjPqqq, https://goo.gl/qNF8XH

-SQL종류 : http://krids.tistory.com/48

-http 요청 응답: https://blog.outsider.ne.kr/888

-GET, POST : http://soul0.tistory.com/185

-
