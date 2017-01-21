//
//  main.m
//  JanuaryTwentyExample01
//
//  Created by abyssinaong on 2017. 1. 20..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        
        
//        Elf *e1 = [[Elf alloc] initWithName:@"호호바"];
//        
//        NSLog(@"하하하 이름은 %@ 입니다.", e1.name);
        
        Person *p1 = [[Person alloc] initWithName:@"알밥"];
        
        NSLog(@"%@", p1.name);
        
    }
    return 0;
}
