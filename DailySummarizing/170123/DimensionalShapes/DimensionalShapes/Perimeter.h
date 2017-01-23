//
//  Perimeter.h
//  DimensionalShapes
//
//  Created by abyssinaong on 2017. 1. 23..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Rectangle;
@class Circle;




@interface Perimeter : NSObject

- (void)perimterRectangle:(Rectangle *)rectangle;

- (void)perimeterCircle:(Circle *)circle;

@end
