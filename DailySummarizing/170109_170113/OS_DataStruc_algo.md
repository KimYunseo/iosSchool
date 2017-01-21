1.운영체제

-Unix 계열

-Windows 계열

-운영체제를 왜 사용할까?

 ①사용자에게 컴퓨터의 프로그램을 쉽고 효율적으로 실행할 수 있는 환경을 제공한다.

 ②컴퓨터 시스템 하드웨어 및 소프트웨어 자원을 여러 사용자 간에 효율적 할당, 관리, 보호하는 것

 ③운영 체제는 제어 프로그램으로서 사용자 프로그램의 오류나 잘못된 자원 사용을 감시하는 것과 입출력 장치 등의 자원에 대한 연산과 제어를 관리한다.

  * 커널 : 운영 체제의 뼈대

2.운영체제의 역할

-시스템 하드웨어 관리

 * 사용자의 프로그램 오류 및 잘못된 자원사용을 감시하고, 입출력 장치등 자원에 대한 연산과 제어를 관리함.

 * 입출력 사용자와 하드웨어에 전달하고, 으용프로그램이 잘못된 행동을 할 경우 이를 운영체제가 제거한다.(EX: 팅기는것, 오류보고 등)

-가상 시스템 서비스 제공

 * 사용자에게 컴퓨터 프로그램을 쉽고 효율적으로 실행할 수 있는 환경을 제공

 * 컴퓨터 속 환경이 물리적으로 있는것이 아닌데, 사용자에게 필요한 가상공간을 만들어 준다 

-자원관리

  * 컴퓨터 시스템하드웨어 및 소프트웨어 자원을 여러 사용자간 효율적 할당 및 관리, 보호

  * 컴퓨터 자원(메모리, CPU속도 등)은 한정되어 있음

 * 프로세스관리

![프로세스](https://github.com/KimYunseo/summary/blob/master/image/process.png?raw=true)

* 제출 : 작업을 처리하기 위해 사용자가 작업을 시스템에 제출한 상태

* 접수 : 제출된 작업이 스풀 공간인 디스크의 할당 위치에 저장된 상태

* 준비 - 프로세스가 프로세서를 할당받기 위해 기다리고 있는상태

 - 프로세스는 준비상태 큐에서 실행을 준비하고 있다.

 - 접수 상태에서 준비 상태로의 전이는 Job 스케줄러에 의해 수행된다.

 - 준비 리스트에 있는 프로세스는 각각 우선순위가 주어진다.

* 실행 - 준비상태 큐에 있는 프로세스가 프로세서를 항당받아 살행되는 상태

 - 실행중인 프로세스에 입출력 처리가 필요하면 실행중인 프로세스는 대기 상태로 전이된다.

 - 프로세스 수행이 완료되기 전에 프로세스에게 주어진 할당 시간이 종료되면 프로세스는 준비 상태로 전이된다.

* 대기, 보류, 플록 

 - 프로세스에 입출력 처리가 필요하면 현재 실행 중인 프로세스가 중단되고, 입출력 처리가 완료될 때까지 대기하고 잇는 상태

 - 대기 리스트에 있는 프로세스는 우선순위가 주어지지 않는다.

* 완료 - 프로세서를 할당받아 주어진 시간 안에 수행을 완료한 상태


   보조기억장치에서 메모리로 명령어 보내고 메모리에 명령어가 올라아가 있는 상태

   주기억장치는 전원 내리면 내용 사라짐, 따라서 보조 기억장치 필요.

 * 주기억장치

  - 단순관리

  - 가상메모리 : 

   * 보조기억장치를 주기억장치 처럼 사용

 * 파일관리

   운영체제가 파일도 관리함

   운영체제가 하드디스크의 자료에 해당하는 주소를 연결해줌


프로세스스케줄링
===========

* FCFS(First-Com First-Served)

 - 준비상태 큐에 도착한 순서에 따라 차례로 CPU할당

* SJF(Shortest Job First)

 - 실행시간 가장 짧은 프로세스에게 먼저 CPU할당

 - 평균대기시간 가장 적은 알고리즘

 - 실행시간이 긴 프로세스에 밀려 무한 연기 상태 발생 가능

* Round Robin Scheduling

 - 시분할시스템을 위해 고안된 방식

 - FCFS 기법의 변형

 - 각 프로세스는 시간 할당한 동안만 실행

 - 완료되지 않으면 다음 프로세스에게 CPU를 넣어주고 준비상태 큐의 가장 뒤로 배치

 - 할당된 시간이 클수록 FCFS와 비슷

 - 할당시간이 작을 수록 문맥교환과 오버헤드가 자주 발생

* Priority Based Scheduling

 - 프로세스 마다 우선순위 부여

 - 우선순위가 동일한 경우 FCFS 기법으로 한다.

 - 가장 낮은 순위를 부여받은 프로세스 무한연기 발생가능

* Multi Queue Scheduling

 - 프로세스를 특정 그룹으로 분류할 수 있는 경우 그룹에 따라 각기 다른 준비 단계 큐 사용

 - 준비 상태 큐 마다 다른 스케줄링 기법 사용가능

 - 다른 준비상태큐 이동불가

커널
===

 * Kernel

 * 운영체제의 핵심

 * 운영체제의 정체성

 * 보안, 자원관리, 추상화

3.자료구조

 * 자료를 효율적으로 이용할 수 있도록 저장하는 방법

* 생김새에 따라서

 -원시구조: 

 -선형구조:

 -비선형구조:

*실체화에 따라서

 -물리적구조:

 -추상적구조:

-배열

 * 순서대로 번호가 붙은 원소들이 연속적인 형태로 구성된 구조

 * 장점 : 자료를 순차적으로 저장할 수 있고, 인덱스의 번호로 접근이 가능

 * 단점 : 크기를 변경할 수 없고, 삽입이 불가능 하다.

-연결리스트

 * 장점 : 동적으로 메모리를 사용할 수 있다는 장점

 * 단점 : 메모리를 추가적으로 사용한다.

  * 단순연결리스트

![단순연결리스트](https://image-proxy.namuwikiusercontent.com/r/http%3A%2F%2Fupload.wikimedia.org%2Fwikipedia%2Fcommons%2Fthumb%2F9%2F9c%2FSingle_linked_list.png%2F400px-Single_linked_list.png)

   * 가장 단순한 형태의 연결리스트 

   * 단점 : 특정 원소를 찾으려면 순차적으로 들어가야 하기 때문에 느리다. Head노드를 참조하는 주소를 잃어버릴 경우 데이터 전체를 못쓴다.

  * 이중연결리스트

![이중연결리스트](https://image-proxy.namuwikiusercontent.com/r/http%3A%2F%2Fupload.wikimedia.org%2Fwikipedia%2Fcommons%2Fthumb%2Fc%2Fca%2FDoubly_linked_list.png%2F400px-Doubly_linked_list.png)

   * 다음 노드의 참조와 이전노드의 참조를 같이 가리키게 한 방법이다.

   * 장점 : 뒷부분의 노드를 탐색할 경우 빠르다. 단순 연결리스트에 비해 노드 삭제시 효율적이다.

   * 단점 : 메모리를 추가적으로 사용

  * 원형연결리스트

![원형연결리스트](https://image-proxy.namuwikiusercontent.com/r/http%3A%2F%2Fupload.wikimedia.org%2Fwikipedia%2Fcommons%2Fthumb%2F9%2F98%2FCircurlar_linked_list.png%2F400px-Circurlar_linked_list.png)

   * 이중 연결리스트의 처음과 끝을 이으면 만들 수 있음.

   * 장점 : 리스트에 노드를 추가할때 효율적

   * 단점 : 구현하는데 있어 조금 어려워 진다.

-스택

![스택](https://upload.wikimedia.org/wikipedia/commons/thumb/2/29/Data_stack.svg/600px-Data_stack.svg.png)

 * 스택 자료구조에 먼저 저장된 것이 꺼내어 쓸 때는 제일 나중에 나온다. 

 * ex: 인터넷 뒤로가기

-큐

 * 선입선출(First In First Out; FIFO)의 자료구조. 대기열이라고도 한다. Queue라는 단어 자체가 표 같은 것을 구매하기 위해 줄서는 것을 의미한다.

-덱

 * 양쪽 끝에서 삽입과 삭제가 모두 가능한 자료 구조의 한 형태이다.

 * 양쪽에서 삭제와 삽입을 발생 시킬 수 있다. 

-트리

 * 부모 노드 밑에 여러 자식 노드가 연결되고, 자식 노드 각각에 다시 자식 노드가 연결되는 재귀적 형태의 자료구조다.

 * 검색, 탐색에 용이하도록 구현됨.

-그래프

![그래프](https://image-proxy.namuwikiusercontent.com/r/http%3A%2F%2Fupload.wikimedia.org%2Fwikipedia%2Fcommons%2Fthumb%2F5%2F5b%2F6n-graf.svg%2F333px-6n-graf.svg.png)

 * 그래프는 정점(Vertex)과 정점들을 연결하는 변(Edge)으로 구성이 된다

 * 길찾기 알고리즘, 관계분석등에 사용된다.


4.알고리즘

-알고리즘이란?

 * 어떤 문제를 해결하기 위한 방법의 모임

 * 대표적인 알고리즘 : 정렬, 탐색, 재귀 등

-정렬 알고리즘

*선택

![선택](https://upload.wikimedia.org/wikipedia/commons/b/b0/Selection_sort_animation.gif)

 ①주어진 리스트 중에 최솟값을 찾는다.

 ②그 값을 맨 앞에 위치한 값과 교체한다(패스(pass)).

 ③맨 처음 위치를 뺀 나머지 리스트를 같은 방법으로 교체한다.

*버블

![버블](https://upload.wikimedia.org/wikipedia/commons/3/37/Bubble_sort_animation.gif)

 ➀인접한 두 원소를 검사하여 더크면 오른쪽으로 이동 후 다음 인접한 원소검사........

 ➁코드 단순 but 느림

*삽입

![삽입1](https://upload.wikimedia.org/wikipedia/commons/2/25/Insertion_sort_animation.gif)

![삽입2](https://upload.wikimedia.org/wikipedia/commons/e/ea/Insertion_sort_001.PNG)

 비교군과 비교 하면서 삽입

*병합

 일정구간을 나워 먼저 정렬하고, 그 다음 일정구간을 정렬한 뒤, 합하여 정렬

*퀵

![퀵](https://upload.wikimedia.org/wikipedia/commons/6/6a/Sorting_quicksort_anim.gif)

 특정 기준점을 잡아서 정렬하는 방법

 평균적으로 가장 빠르. 하지만, 기준점을 잘못 잡았거나, 자료의 크기가 비슷할 때 느림

-시간복잡도

*알고리즘이 실행될 때 소요되는 시간분석

*빅오 표기법: 최악의 상황에 대해 구하는것

*선택 : O(n^2)

*버블 : O(n^2)

*삽입 : O(n^2)

*병합 : O(n log n)

*퀵 : O(n log n)

*선형탐색: O(n)

*이진탐색 : O(log n)



학습링크
======

- 운영체제: https://goo.gl/4UalWu, https://goo.gl/njn9fl, http://goo.gl//kI3DP3

- 스케쥴링 : https://goo.gl/Wi9lri, http://goo.gl/7HwAe0

- 파일시스템 : https://goo.gl/VuPAHg

- 커널 : https://goo.gl/CG9zir, https://goo.gl/gFDjWc

- 리눅스 커널 : https://goo.gl/al3WMP

- 리눅스 : https://goo.gl/yK37ux

- 리누스 토발즈 : https://goo.gl/kQSSsR, https://goo.gl/xQ6JPi

- 자료구조 : https://goo.gl/f8O7Vo, https://goo.gl/H1CKb0

- 알고리즘 : https://goo.gl/GRz6tA, https://goo.gl/qdkZlF

- 시간복잡도 : http://goo.gl/jQi2OF, http://goo.gl/rszprb, http://goo.gl/BmisjF
