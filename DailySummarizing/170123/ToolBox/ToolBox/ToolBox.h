//
//  ToolBox.h
//  ToolBox
//
//  Created by abyssinaong on 2017. 1. 23..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ToolBox : NSObject

+ (CGFloat)inchToCm:(CGFloat)inch;
+ (CGFloat)cmToInch:(CGFloat)cm;

+ (CGFloat)mTp:(CGFloat)m2;
+ (CGFloat)pTm:(CGFloat)pyoung;

//(화씨온도 - 32) ÷ 1.8 = 섭씨온도
+ (CGFloat)fahrenheitToCentigrade:(CGFloat)fahrenheit;
//(섭씨온도 × 1.8) + 32 = 화씨온도
+ (CGFloat)centigradeToFahrenheit:(CGFloat)centigrade;
@end
