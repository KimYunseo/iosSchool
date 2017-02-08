//
//  ViewStructure.h
//  ViewPractice01
//
//  Created by abyssinaong on 2017. 2. 4..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface ViewStructure : UIView

- (instancetype)initWithSetX:(CGFloat)xNum setY:(CGFloat)yNum
                    setWidth:(CGFloat)width setHeight:(CGFloat)heigth
              setBorderWidth:(NSUInteger)borderWidthNum;
@end
