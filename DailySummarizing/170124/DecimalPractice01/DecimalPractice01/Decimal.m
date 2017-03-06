//
//  Decimal.m
//  DecimalPractice01
//
//  Created by abyssinaong on 2017. 1. 24..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import "Decimal.h"

@implementation Decimal

//클래스 메소드 사용
+ (NSInteger)decimalTo:(NSInteger)num
{
    //아직 objective c 에서의 배열을 잘 몰라 c언어의 배열을 사용함.
    char p[num];
    
    NSInteger a;
    NSInteger b;
    
    for(a=0 ; a <= num; a++) p[a]=0;
    for(b =2 ; b<=num ; b++ ){
        if(p[b]==0){
//            NSLog(@"%ld ", (long)b);
            
            for( a=b ; a<=num ; a = a*2 ) p[a]=1;
            NSLog(@"ha %ld", a);
        }
        
    }
    
    return b;
}

@end
