//
//  main.m
//  Decimal
//
//  Created by abyssinaong on 2017. 1. 24..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import <Foundation/Foundation.h>
//메크로 변수
#define pM 50

int main(int argc, const char * argv[]) {
    @autoreleasepool {
///2~50 소수 구하기
        int a;
        int b;
        char num[pM+1];
        
        //  배열의 모든 요소를 0으로 초기화
        for(a=0; a<=pM; a++) num[a] = 0;
        // 0과 1은 소수가 아니므로 프린트 되지 않도록 한다.
        
        // 따라서 2~50까지를 for문으로 하고
        for(a=2 ; a<=pM ; a++){
            
            // 0인 값만 들어오게 하는 이유는 2,3,5,...의 각 배수들을 배제하여야 하기 때문. 아래 num[b] = 1 에서 각 배수들은 0에서 1로 변환되어 각 배수들이 배제된다.
            if(num[a] == 0){
            printf("%d ", a);
            for(b = 2*a ; b<=pM; b +=a) num[b] = 1;
            }
        }
        
        
    }
    return 0;
}
