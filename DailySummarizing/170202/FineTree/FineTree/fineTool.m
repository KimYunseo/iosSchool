//
//  fineTool.m
//  FineTree
//
//  Created by abyssinaong on 2017. 2. 2..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import "fineTool.h"

@implementation fineTool


+ (void)halfFineTree:(NSInteger)num
{
     NSString *j = @"";
    
    for(NSInteger i = 1;  i <= num ; i +=1 )
    {
        for(NSInteger k = 1; k <=i ; k +=1)
        {
        j = [j stringByAppendingString:@"*" ];

//            printf("*");
            
        }
//        printf("\n");
        NSLog(@"%@", j);
        j = @"";
        
    }
}


+ (void)reverseHalfFineTree:(NSInteger)num
{
    for(NSInteger i = num ; i>=1 ; i -=1 )
    {
        for(NSInteger j = 1;  j <= i; j +=1)
        {
            printf("*");
        }
        printf("\n");
    }
}


+ (void)fullFineTree:(NSInteger)num
{
    NSString *j = @"";
    NSString *m = @"";
    NSString *sum = @"";
    NSInteger dNum = 0;
    dNum = num;
    for(NSInteger i = 1;  i<= num ; i +=1)
    {

        m = @"";
        j = @"";
        sum = @"";
        
        for(NSInteger d = dNum ; d>= 0; d-=1 ){
            
            m = [m stringByAppendingString:@" "];
            
        }
 
        dNum --;
        
        for(NSInteger k = 1; k <=2*i-1 ; k +=1)
        {
            j = [j stringByAppendingString:@"*"];
        }
        sum = [m stringByAppendingString:j];
        NSLog(@"%@", sum);

        
    }
}

@end
