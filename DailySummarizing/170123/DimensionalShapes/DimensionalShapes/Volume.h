//
//  Volume.h
//  DimensionalShapes
//
//  Created by abyssinaong on 2017. 1. 23..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import <Foundation/Foundation.h>
@class RectangularSolid;
@class CircularCylinder;
@class Sphere;
@class Cone;

@interface Volume : NSObject

- (void)volumeRectangularSolid:(RectangularSolid *)rectangularSolid;
- (void)volumeCircularCylinder:(CircularCylinder *)circularCylinder;
- (void)volumeSphere:(Sphere *)sphere;
- (void)volumecone:(Cone *)cone;



@end
