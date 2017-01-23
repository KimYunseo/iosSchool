//
//  ToolBox.m
//  ToolBox
//
//  Created by abyssinaong on 2017. 1. 23..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import "ToolBox.h"

@implementation ToolBox

//인치를 센치로
+ (CGFloat)inchToCm:(CGFloat)inch
{
    
    CGFloat cm = 2.5 *inch;
    return cm;
    
}

//센치를 인치로
+ (CGFloat)cmToInch:(CGFloat)cm
{
    
    CGFloat inch = cm/2.5;
    
    return inch;
    
}

+ (CGFloat)mTp:(CGFloat)m2
{
    
    CGFloat pyoung = m2 * 3.3058;
    return pyoung;
    
}
+ (CGFloat)pTm:(CGFloat)pyoung
{
 
    CGFloat m2 = pyoung/3.3058;
    
    return m2;
    
}


//(화씨온도 - 32) ÷ 1.8 = 섭씨온도
+ (CGFloat)fahrenheitToCentigrade:(CGFloat)fahrenheit
{
    
    CGFloat centigrade = (fahrenheit - 32.0)/1.8;
    return centigrade;
}
//(섭씨온도 × 1.8) + 32 = 화씨온도
+ (CGFloat)centigradeToFahrenheit:(CGFloat)centigrade
{
    
    CGFloat fahrenheit = (centigrade * 1.8) +32.0;
    return fahrenheit;
}

@end
