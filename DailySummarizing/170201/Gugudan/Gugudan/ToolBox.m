//
//  ToolBox.m
//  Gugudan
//
//  Created by abyssinaong on 2017. 2. 1..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import "ToolBox.h"

@implementation ToolBox

+ (void)gugudan
{
    
    NSInteger i = 1;
    NSInteger j = 1;

    while (j <10) {
        while ( i<10) {
            NSLog(@"%lu * %lu = %lu",j , i, j*i);
            i +=1;
            
        }
        j +=1;
        i =1;  // i에 대한 while문에서 i는 이미 10으로 고정되어 j가 2가 되어도 i=10이므로 i를 1로 만드는 과정이 없다면 1단에서 끝난다.
    }
    

//
//    for(i =1 ; i <10; i +=1)
//    {
//        
//        NSLog(@"%lu * %lu = %lu",dan , i, dan*i);
//    }
//    
}


+ (void)gugudanByFor:(NSInteger)num
{
    for (; num<10 ; num += 1 ){
        for (NSInteger i = 1 ; i <10; i +=1 ) {
            NSLog(@"%lu * %lu = %lu", num , i , num*i);
        }
    }
    
}


//팩토리얼 for 결과값
+ (void)factorialByFor:(NSInteger)num
{
    
    NSInteger j = 1;
    for(NSInteger i =1; i<=num; i +=1)
    {
        
        j = j*i;
        
    }
    NSLog(@"%lu",j);
    
}

//팩토리얼 for 문자열 값
+ (void)factorialByString:(NSInteger)num
{
    NSString *resultString = @"";
    for(NSInteger i =1; i<=num; i +=1)
    {
        if(i == num){
        NSString *sNum = [NSString stringWithFormat:@"%lu ", i];
        resultString = [resultString stringByAppendingString:sNum];
        }
        else
        {
            NSString *sNum = [NSString stringWithFormat:@"%lu X ", i];
            resultString = [resultString stringByAppendingString:sNum];
        }
        
    }
    NSLog(@"%@",resultString);
    
}

+ (void)fidMultipleNum:(NSInteger)num maxLange:(NSInteger)maxNum
{
    
    
    NSInteger i = 1;
    NSString *resultStr = @"";
    
    while (i <= maxNum) {
        if (i % num == 0 )
        {
            NSString *numStr = [NSString stringWithFormat:@"%lu , ", i];
            resultStr = [resultStr stringByAppendingString:numStr];
            
        }
        i += 1;
    }
    NSLog(@"%@",resultStr);
   /*
    // 이건 숫자만 뽑은 것
    NSInteger i = 2;
    NSInteger resultNum = num;
    
    while (resultNum <= maxNum) {
        NSLog(@"%lu\n", resultNum);
        resultNum = num * i;
        i += 1;
        //        if(resultNum > maxNum) break;
        
    }
    */
}


+ (void)addAllNum:(NSInteger)num
{
    //숫자를 문자로 바꿔주는
    NSString *stringNum = [NSString stringWithFormat:@"%lu", num];
    NSUInteger count = stringNum.length;
    
    NSUInteger intgerNum2 = 0;
    
    while ( count <= 1 ) {
        NSString *sNum1 = [stringNum substringWithRange:NSMakeRange(count, 1)];
        NSUInteger integerNum1 = [sNum1 integerValue];
        
        intgerNum2 = intgerNum2 + integerNum1;
        
        
        count -= 1;
        
    }
    
    NSLog(@"");
}


//삼각수 구하기

+ (NSInteger)triangularNumber:(NSInteger)num
{
    
    NSInteger resultNum = num * ( num+ 1 )/2;
    
    
    return resultNum;
}

/*
NSString *h1 =  @"http://";

//string 더하기
h1 = [h1 stringByAppendingString:@"naver"];
h1 = [h1 stringByAppendingString:@"."];
h1 = [h1 stringByAppendingString:@"com"];

NSLog(@"%@", h1);

 
//string 분해
NSString *subString =[h1 substringWithRange:NSMakeRange(7,5)];

 */





//+ (void)separtedNum:(NSString *)num
//{
//    
//    NSString *sNum1 = num;
//    NSInteger iNum1 ;
//    
//    
//}
@end
