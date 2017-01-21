//
//  main.m
//  ExampleInheritance
//
//  Created by abyssinaong on 2017. 1. 18..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Human.h"
#import "Warrior.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Human *h1 = [[Human alloc] init];
        h1.name = @"전사";
        h1.hp = 100;
        h1.ap = 20;
        
        Warrior *warriorSetting = [[Warrior alloc] init];
        warriorSetting.ap =  20;
        warriorSetting.ap1 = 10;
        
        [warriorSetting addAp];
        
        
    }
    return 0;
}
