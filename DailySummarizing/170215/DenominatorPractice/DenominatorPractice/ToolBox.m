//
//  ToolBox.m
//  DenominatorPractice
//
//  Created by abyssinaong on 2017. 2. 15..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import "ToolBox.h"

@implementation ToolBox

+ (NSString *)denominatorCaculrator:(NSString *)number
{
    
    NSInteger num = [number integerValue];
    NSMutableArray *resultNum = [[NSMutableArray alloc] init];
    for(NSInteger i = 1; i<= num; i++ ){
        
        if (num % i == 0 ) {
            NSNumber *separateNum = [NSNumber numberWithInteger:i];
            [resultNum addObject:separateNum];
            NSLog(@"%@",separateNum);
        }
    }
    NSInteger sumNum = 0;
    for(NSInteger i = 0 ; i <= resultNum.count-1; i++){
        
        NSInteger arrayNum = [resultNum[i] integerValue];
        sumNum = sumNum + arrayNum;
    }
    
    NSString *resultStr = [NSString stringWithFormat:@"%lu", sumNum];
    return resultStr;
}

@end
