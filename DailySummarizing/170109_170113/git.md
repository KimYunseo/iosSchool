GIT
===

1.VSC(Version Control System)

 * 파일 변경이력을 기록해 관리를 쉽게 할 수 있도록 해주는 시스템.

2.이점 

 * 변경이력을 통해 그 내용 공유 가능

 * 타인 작업내용을 쉽게 병합

 * 쉽게 복구 가능

 * Branch를 통해 병렬관리 가능

3.Git 작업 흐름

|   	|   working Directory	|   Staging Area	|  Repository 	|
|---	|:-:|:-:|:-:|
|   Checkout the project	|  <-- 	|  <-- 	|  <-- 	|
|  Stage Fixes 	|  --> 	|  --> 	|   	|
|   Commit	|   	|  --> 	|  --> 	|

4.working Directory

 * 실제 작업하고 공간

5.staging area

 1)정의

  * Git이 변경이력을 관리하는 부분

 2)기능

  * working Directory에서 Git 명령어를 통해 추가 가능

  * 이 곳에 올라와 있는 파일만 저장소에 추가 수정 가능

  * 일종의 준비구역

 3)gitignore

  * [IDE](https://ko.wikipedia.org/wiki/%ED%86%B5%ED%95%A9_%EA%B0%9C%EB%B0%9C_%ED%99%98%EA%B2%BD "IDE")( Integrated Development Environment) 의존성 파일이 존재
  * 개인의  작업환경과 관련된 파일들로 저장소에 추가되지 않아야하는 파일들이 프로젝트에 존재
  * **tip!** 프로젝트 들어가기 전에 http://gitignore.io 에서 gitignore파일 설정에 필요한  쉽게 구할 수 있다.

6.Repository

 1)정의

  * 변경이력을 저장한 장소

 2)Local Repository

  * 외부에  위치하지 않고 작업하고 있는 컴퓨터 존재

  * 인터넷 연결되지 않아도 가능

  * 잦은 저장소 처리요청에도 부담이 없음

  * 외부 저장소에 손실이 발생하도라도 빠르게 복구가능

 3)Remote Repository

  * 전통적인 관점에서의 저장소개념

  * 외부서버로 변경이력 기록

  * 다중 사용자로부터 관리되는 각 로컬 저장소 접점

7.Git의 구조

|   	|   working Directory	|   Staging Area	|  Local Repository 	|   Remote Repository	|
|:-:	|:-:	|:-:	|:-:	|:-:	|
| add 	| -->  	|  --> 	|   	|   	|
| commit  	|   	|   -->	|  --> 	|   	|
|  push 	|   	|   	|   -->	|   -->	|
|   fetch	|   	|   	|   <--	|  <-- 	|
|  merge 	|   <--	|   <--	|  <-- 	|   	|
|   pull	|   <--	|   <--	|  <-- 	|   <--	|


8.주의점

 * **충돌방지**를 위해 push 전에 먼저 **pull**해야한다.


****간단한 터미널 명령어****

$ pwd 현재경로

$ ls 해당 디렉토리 안에 무슨 파일 있는지 list를 보여줌

$ mkdir 디렉토리(폴더) 만들기

$ cd 디렉토리 이동

$ cd .. 바로 앞 경로로 이동

$ open . 현재 위치의 파인더를 여는 커멘드



git with command
================

1.git 기본명령어

* git init : 현재 있는 워킹 디렉토리에 .git 폴더를 생성

* git status : 현재 워킹디렉토리 상태 확인

* git clone :   remote 저장소를 통째로 워킹 디렉토리에 복사

* git pull : remote의 정보를 가져와 워킹디렉토리와 병합

* git add 파일명 : 새로 만들어 졌거나 변경된 파일을 워킹 디렉토리에서  stage에 올리기

* git add . : 한꺼번에 stage 에 올리기

* git commit : stage에 올라온 파일을 local repo에 올리기 + comment를 남기기, comment 쓰는 창에서 첫번째 줄은 제목이다.

* git remote add origin http://~  : remote와 연동시키기

* git push : remote로 파일과 comment 보내기
