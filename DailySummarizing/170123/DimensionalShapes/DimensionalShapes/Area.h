//
//  Area.h
//  DimensionalShapes
//
//  Created by abyssinaong on 2017. 1. 23..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Rectangle;
@class Circle;
@class Triangle;
@class Trapezoid;
@class RectangularSolid;

@interface Area : NSObject

- (void)areaRactangle:(Rectangle *)rectang;

- (void)areaCircle:(Circle *)circle;

- (void)areaTriangle:(Triangle *)triangle;

- (void)areaTrapezoid:(Trapezoid *)trapezoid;


@end
