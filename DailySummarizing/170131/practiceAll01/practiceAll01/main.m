//
//  main.m
//  practiceAll01
//
//  Created by abyssinaong on 2017. 1. 31..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Sales.h"
#import "Developer.h"
#import "ToolBox.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {

//        Person *p1 = [[Person alloc] initWithRegisterNumber:@"881121-12345679" setName:@"장동민"];
//        p1.age = 29;
//        p1.birthday = @"1988/11/21";
//        p1.adress = @"서울시";
////        p1.salary = 3000;
//        
//        [p1 jobSelect:@"영업직"];
//        NSLog(@"직업명은 %@ 입니다.",p1.jobName);
//        
//        
//        
//        if([p1 birthdayConfirm] == YES)
//        {
//            NSLog(@"생일입니다.");
//        } else {
//            NSLog(@"생일이 아닙니다.");
//        }
//        
//        
        
        
        Sales *s1 = [[Sales alloc] initWithRegisterNumber:@"891022-12345678" setName:@"피카츄"];
        s1.age = (2017 - 1989);
        s1.birthday =@"1989/10.22";
        s1.adress = @"강원도";

        [s1 succesSalseMoney:5000];
        NSLog(@"%@님의 이번년도 총 임금은 %lu입니다.",s1.name,[s1 yearsTotalWage:3000]);
        
        
        Developer *d1 = [[Developer alloc] initWithRegisterNumber:@"871111-12345679" setName:@"꼬부기"];
        d1.age = (2017 - 1987);
        d1.jobName = @"개발자";
        d1.birthday = @"1987/11/11";
        d1.adress = @"충청도";
        
        [d1 completeProject:2];
        NSLog(@"%@님의 이번년도 총 임금은 %lu입니다.",d1.name,[d1 yearsTotalWage:4000]);
        
        //개발자 여부 확인
        BOOL yOrNDeveloper = [ToolBox checkDeveloper:d1];
        
        if (yOrNDeveloper)
        {
            
            NSLog(@"개발자가 맞습니다.");
            
        } else
        {
            
            NSLog(@"개발자가 아닙니다.");
            
        }
        
        
        //영업직 여부 확인
        BOOL yOrNSales = [ToolBox checkSales:d1];
        
        if (yOrNSales)
        {
            
            NSLog(@"영업직이 맞습니다.");
            
        } else
        {
            
            NSLog(@"영업직이 아닙니다.");
            
        }
        
        
    }
    return 0;
}
