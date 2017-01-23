//
//  main.m
//  DimensionalShapes
//
//  Created by abyssinaong on 2017. 1. 23..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Rectangle.h"
#import "Circle.h"
#import "Triangle.h"
#import "RectangularSolid.h"
#import "CircularCylinder.h"
#import "Cone.h"
#import "Sphere.h"
#import "Trapezoid.h"
#import "Area.h"
#import "Perimeter.h"
#import "Volume.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {

        Rectangle *r1 = [[Rectangle alloc] init];
        r1.width = 3.0;
        r1.lenght = 5.5;
        
        Circle *c1 = [[Circle alloc] init];
        c1.radius = 34.4;
        
        RectangularSolid *rS1 = [[RectangularSolid alloc] init];
        rS1.width = 30.0;
        rS1.lenght = 45.5;
        rS1.height = 28.0;
        
        CircularCylinder *cC1 = [[CircularCylinder alloc] init];
        cC1.radius = 24.6;
        cC1.height = 46.4;
        
        Cone *cN1 = [[Cone alloc] init];
        cN1.radius = 34.6;
        cN1.height = 56.4;
        
        Volume *v1 = [[Volume alloc] init];
        [v1 volumeRectangularSolid:rS1];
        [v1 volumeCircularCylinder:cC1];
        [v1 volumecone:cN1];
        
        
        Area *a1 = [[Area alloc] init];
        [a1 areaCircle:c1];
        
        Perimeter *p1 = [[Perimeter alloc] init];
        [p1 perimeterCircle:c1];

        
    }
    return 0;
}

NSString
