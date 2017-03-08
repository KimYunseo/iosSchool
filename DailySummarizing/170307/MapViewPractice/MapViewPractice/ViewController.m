//
//  ViewController.m
//  MapViewPractice
//
//  Created by abyssinaong on 2017. 3. 7..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import "ViewController.h"
#import <MapKit/MapKit.h>
#import "NewAnnotation.h"

//static const CGFloat BASE_LAT = 38.155348;
//static const CGFloat BASE_LON = 128.609215;


@interface ViewController ()
<CLLocationManagerDelegate>
@property (weak, nonatomic) IBOutlet MKMapView *mapView;
@property (nonatomic) CLLocationManager *locationManager;
//@property NewAnnotation *anota;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //특정 위경도 값에 해당하는 곳을 지도로 표현하는 방법
//    CLLocationCoordinate2D locate = CLLocationCoordinate2DMake(BASE_LAT, BASE_LON);
//    MKCoordinateSpan span = MKCoordinateSpanMake(0.1, 0.1);
//    
//    MKCoordinateRegion region =MKCoordinateRegionMake(locate, span);
//    [self.mapView setRegion:region];
    
    
    //자신의 현재 위치를 보여주는 방법
    self.locationManager = [[CLLocationManager alloc] init];
    self.locationManager.delegate = self;
    self.locationManager.desiredAccuracy = kCLLocationAccuracyBest;
    [self.locationManager requestWhenInUseAuthorization];
    [self.locationManager startUpdatingLocation];
    
    
    [self.mapView setShowsUserLocation:YES];
    
    
}

- (void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray<CLLocation *> *)locations{
    
    CLLocationCoordinate2D coordinate = ((CLLocation *)locations.lastObject).coordinate;
    MKCoordinateSpan span = MKCoordinateSpanMake(0.005, 0.005);
    
    MKCoordinateRegion region = MKCoordinateRegionMake(coordinate, span);
    [self.mapView setRegion:region];
    
    NewAnnotation *anota = [[NewAnnotation alloc] initWithsetCoordinate:coordinate];
    
    [self.mapView addAnnotation:anota];
    
    [manager stopUpdatingLocation];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
