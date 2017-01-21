//
//  main.m
//  BookClass
//
//  Created by abyssinaong on 2017. 1. 18..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "SwordMan.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        SwordMan *me = [[SwordMan alloc] init];
        me.name = @"김윤서";
        me.physicalPower = @300;
        [me smile];
        [me physicalAttack];
        
    }
    return 0;
}
