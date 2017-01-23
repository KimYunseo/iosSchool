//
//  Perimeter.m
//  DimensionalShapes
//
//  Created by abyssinaong on 2017. 1. 23..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import "Perimeter.h"
#import "Rectangle.h"
#import "Circle.h"


@implementation Perimeter

- (void)perimterRectangle:(Rectangle *)rectangle{
    
    CGFloat parimeter = (rectangle.lenght + rectangle.width)*2;
    NSLog(@"사각형의 둘레 %lf", parimeter);
    
}


- (void)perimeterCircle:(Circle *)circle{
    
    CGFloat parimeter = circle.radius * 2 * 3.141592;
    NSLog(@"원의 둘레 %lf", parimeter);
    
}

@end
