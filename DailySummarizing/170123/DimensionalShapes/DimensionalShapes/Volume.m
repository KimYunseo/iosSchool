//
//  Volume.m
//  DimensionalShapes
//
//  Created by abyssinaong on 2017. 1. 23..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import "Volume.h"
#import "RectangularSolid.h"
#import "CircularCylinder.h"
#import "Sphere.h"
#import "Cone.h"


@implementation Volume

- (void)volumeRectangularSolid:(RectangularSolid *)rectangularSolid{
    
    CGFloat volume = rectangularSolid.lenght * rectangularSolid.width * rectangularSolid.height;
    NSLog(@"직육면체 부피 %lf", volume);
    
}


- (void)volumeCircularCylinder:(CircularCylinder *)circularCylinder{
    
    CGFloat volume = circularCylinder.radius * circularCylinder.radius * circularCylinder.height * 3.141592;
    NSLog(@"원통의 부피 %lf", volume);
    
}

- (void)volumeSphere:(Sphere *)sphere{
    
    CGFloat volume = sphere.radius * sphere.radius * sphere.radius * 4 * 3.141592 / 3;
    NSLog(@"구의 부피 %lf", volume);
    
}



- (void)volumecone:(Cone *)cone{
    
    CGFloat volume = cone.radius * cone.radius * cone.height / 3;
    NSLog(@"원뿔의 부피 %lf", volume);
}

@end
