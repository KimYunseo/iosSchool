//
//  NewAnnotation.h
//  MapViewPractice
//
//  Created by abyssinaong on 2017. 3. 7..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>

@interface NewAnnotation : NSObject <MKAnnotation>
//annotation을 상속받아야 함

@property (nonatomic, readonly) CLLocationCoordinate2D coordinate;
- (instancetype)initWithsetCoordinate:(CLLocationCoordinate2D)newCoordinate;


@end
