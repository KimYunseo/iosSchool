//
//  Area.m
//  DimensionalShapes
//
//  Created by abyssinaong on 2017. 1. 23..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import "Area.h"
#import "Rectangle.h"
#import "Circle.h"
#import "Triangle.h"
#import "Trapezoid.h"
#import "RectangularSolid.h"


@implementation Area

- (void)areaRactangle:(Rectangle *)rectang{
    
    CGFloat area = rectang.width* rectang.lenght;
    NSLog(@"사각형 넓이 %lf", area);
    
}

- (void)areaCircle:(Circle *)circle{
    
    CGFloat area = (circle.radius * circle.radius)*3.141592;
    NSLog(@"원의 넓이 %lf", area);
    
}

- (void)areaTriangle:(Triangle *)triangle{
    
    CGFloat area = (triangle.base * triangle.height)/2;
    NSLog(@"삼각형의 넓이 %lf", area);

}

- (void)areaTrapezoid:(Trapezoid *)trapezoid{
    
    CGFloat area = (trapezoid.upBase + trapezoid.downBase) *  trapezoid.height /2;
    NSLog(@"사다리꼴의 넓이 %lf", area);

}


@end
