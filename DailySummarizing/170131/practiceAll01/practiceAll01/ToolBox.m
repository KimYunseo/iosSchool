//
//  ToolBox.m
//  practiceAll01
//
//  Created by abyssinaong on 2017. 1. 31..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import "ToolBox.h"

@implementation ToolBox


+ (BOOL)checkDeveloper:(Person *)p1
{
    
    if ([p1.jobName isEqualToString:@"개발자"])
    {
        
        return YES;
        
    } else {
        
        return NO;
    }
    
}

+ (BOOL)checkSales:(Person *)p1
{
    
    if ([p1.jobName isEqualToString:@"영업직"])
    {
        
        return YES;
        
    } else {
        
        return NO;
    }
    
}

@end
