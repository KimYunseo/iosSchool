//
//  main.m
//  TestTwo
//
//  Created by abyssinaong on 2017. 1. 17..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Warrior.h"//import에 한 프로젝트내 다른 헤더파일을 가져오려면 다른 헤더파일 이름을 적어야 함.
#import "Wizard.h"
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *me = [[Person alloc] init];
        me.name = @"김윤서";  //me라는 객체안에 있는 name의 공간에 '김윤서'라는 데이터가 들어감/ 여기너 name은 Person 안에 있는 프로퍼티의 이름이다.
        me.gender = @"male";
        [me eat];
        [me smile];
        
        Person *you = [[Person alloc] init];
        you.name = @"아이유";
        you.gender = @"female";
        [you eat];
        [you smile];
        
        Warrior *baba = [[Warrior alloc] init];
        baba.health = 500;
        baba.mana = 50;
        baba.physicalPower = 100;
        baba.magicalPower = 20;
        
        
        Warrior *antman = [[Warrior alloc] init];
        antman.health = 450;
        antman.mana = 80;
        antman.def = 12;
        antman.physicalPower = 120;
        antman.magicalPower = 30;
        
        Wizard *rabbit = [[Wizard alloc] init];
        rabbit.health = 200;
        rabbit.mana = 500;
        rabbit.def = 5;
        rabbit.physicalPower = 40;
        rabbit.magicalPower = 500;
        
        Wizard *sossor = [[Wizard alloc] init];
        sossor.health = 150;
        sossor.mana = 550;
        sossor.physicalPower = 30;
        sossor.magicalPower = 550;
        //[sossor magicalAttackTo: @"워리어"];
        
        
        //전쟁시작 순서대로 읽는다는것을 상기시켜라! 그러므로 실행은 아래 쪽에 모아서 해야함.
        [antman physicalAttackTo: rabbit];
        [rabbit physicalAttackTo: antman];
        
        //alloc 메서드로 클래를 기반으로 객체를 만들고 init 초기화 시켜라 하는 의미
/*
        NSLog(@"My name is %@\n", me.name);
        NSLog(@"baba의 물리 공격력은 %@입니다.\n", baba.physicalPower);
        NSLog(@"baba의 health는 %@이고, antman의 health는 %@입니다.", baba.health, antman.health);
        NSLog(@"\n rabbit님의 스테이터스는\n health %@\n mana %@\n pysicalPower %@\n mana %@\n 입니다.", rabbit.health, rabbit.mana, rabbit.physicalPower, rabbit.magicalPower);
        NSLog(@"Person은 %@님과 %@님이 있습니다.", me.name, you.name);
*/
    
    }
    return 0;
}



/*
main.m 파일에서 적는다.
 
- 객체 생성
[<클래스 이름> alloc];
'클래스를 기반으로 객체를 메모리안에 만들어라' 라는 의미
 
-초기화
[객체 init];
 
-객체생성 + 초기화
[[<클래스 이름> alloc] init];
이럴경우 객체를 생성하고 초기화 한 후 객체 메모리의 어떤 위치에 있는지 주소값을 알려줌
 
-변수 생성
객체의 주소값을 담을 변수를 생성한다.

<데이터 타입> *<변수이름> = <객체의 주소>;
이때, 객체에 대한 주소값을 담는 것이므로 데이터 타입은 클래스 이름이 된다. 더 자세히 설명하자면 객체는 클래스로 부터 나오고 객체의 데이터 타입 또한 클래스에 의해 결정된다. 따라서 테이터 타입이 클래스가 되는것이다./  *는 주소값을 넣는다고 표시하는것
 
 

*/
