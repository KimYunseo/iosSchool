//
//  Tool.m
//  RandomTest01
//
//  Created by abyssinaong on 2017. 2. 4..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import "Tool.h"

@implementation Tool

+ (NSString *)randomCharctorName
{
    NSString *charctorName[] ={@"cubemoa",@"diabllo",@"jupitor",@"kalcas",@"panteaon",@"tanatose",@"midas",@"tot",@"aten",@"pennil"};
    
    NSInteger ranNum = arc4random()%10 - 1 ;
    if(ranNum<0){
        ranNum = -(ranNum);
    }
    
    NSLog(@"%lu", ranNum);
    
    if (ranNum == 10) {
        ranNum = 9;
    }
    
    NSString *randomCharctor = charctorName[ranNum];
    
    
    
    return randomCharctor;
}

+ (void)randomNum{
    
    NSInteger ranNum = arc4random()%10 - 1 ;
    NSLog(@"%lu", ranNum);
}

@end
