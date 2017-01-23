//
//  main.m
//  TestExample01
//
//  Created by abyssinaong on 2017. 1. 23..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Bank.h"
#import "Man.h"
#import "Woman.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {

        Man *m1 = [[Man alloc] init];
        m1.name = @"장동건";
        m1.assets = 300;
        
        Woman *w1 = [[Woman alloc] init];
        w1.name = @"이소영";
        w1.assets = 300;
        
        Bank *b1 = [[Bank alloc] init];
        b1.bankName = @"하나은행";
        b1.bankAdress = @"서울시";
        
        [m1 depositTo:b1 accountMoney:700];
        [w1 depositTo:b1 accountMoney:500];
        
        [m1 inquiry:b1];
        [w1 inquiry:b1];
        
        [b1 changeTransfer:@"제주도"];
        
        [b1 bankTransferTo:m1 fromBank:w1 transferValue:100];
        
    }
    return 0;
}
