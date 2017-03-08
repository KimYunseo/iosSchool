//
//  NewAnnotation.m
//  MapViewPractice
//
//  Created by abyssinaong on 2017. 3. 7..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import "NewAnnotation.h"
@interface NewAnnotation()
@property CLLocationCoordinate2D coordinate;
@end

@implementation NewAnnotation



- (instancetype)initWithsetCoordinate:(CLLocationCoordinate2D)newCoordinate
{
    self = [super init];
    if (self) {
        self.coordinate = newCoordinate;

    }
    return self;
}


//
//- (void)coordinate:(CLLocationCoordinate2D)newCoordinate{
//    
//    self.coordinate = newCoordinate;
//    
//}

@end
