//
//  main.m
//  Test01
//
//  Created by abyssinaong on 2017. 1. 20..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Bank.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...

        Bank *b1 = [[Bank alloc] init];
        b1.bankName = @"하나은행";
        b1.bankLocation = @"서울시";
        
        
        [b1 changeAdrresTo:@"제주도"];
        
    }
    return 0;
}
