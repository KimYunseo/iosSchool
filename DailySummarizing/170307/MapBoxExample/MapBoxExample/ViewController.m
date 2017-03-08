//
//  ViewController.m
//  MapBoxExample
//
//  Created by abyssinaong on 2017. 3. 7..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import "ViewController.h"
#import <Mapbox/Mapbox.h>

@interface ViewController () <MGLMapViewDelegate, CLLocationManagerDelegate>
//@property (nonatomic, weak) IBOutlet MGLMapView *mapView;
@property (weak, nonatomic) IBOutlet MGLMapView *mapView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//    MGLMapView *mapView = [[MGLMapView alloc] initWithFrame:self.view.bounds];

    //맵 스타일 변경
//    self.mapView.styleURL = [MGLStyle satelliteStyleURLWithVersion:8];
//    self.mapView = mapView;
    
    // 맵 delegate 연결
    self.mapView.delegate = self;
    

//    mapView.showsUserLocation = YES;
//    mapView.userTrackingMode = MGLUserTrackingModeFollowWithCourse;

    //오토레이아웃
//    mapView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    
    // Set the map’s center coordinate and zoom level.
//    [mapView setCenterCoordinate:CLLocationCoordinate2DMake(59.31, 18.06)
//                       zoomLevel:9
//                        animated:NO];

//    [mapView setUserTrackingMode:MGLUserTrackingModeFollowWithCourse animated:YES];
//    [self.view addSubview:mapView];
    
}



- (void)mapView:(MGLMapView *)mapView didUpdateUserLocation:(MGLUserLocation *)userLocation{
    //자신의 현재 위치를 받아 지도에 표시
    mapView.userTrackingMode= MGLUserTrackingModeFollow;
    
    
    //자신의 현재 위치를 위경도 값으로 받아 보기 위한것
    CLLocation *temp = userLocation.location;
    CLLocationCoordinate2D loc = temp.coordinate;
    NSLog(@"위도 %lf   경도 %lf", loc.latitude, loc.longitude);
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
