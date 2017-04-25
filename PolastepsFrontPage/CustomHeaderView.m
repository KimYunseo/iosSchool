//
//  CustomHeaderView.m
//  PolastepsFrontPage
//
//  Created by abyssinaong on 2017. 2. 20..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import "CustomHeaderView.h"
#import "ViewInScrollMenu.h"
#import "ViewInMainImage.h"
#import "DataCenter.h"

@interface CustomHeaderView()

@property (nonatomic, weak) UIScrollView *menuScroll;

@end

@implementation CustomHeaderView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        [self mainViewCreate];
        [self menuScrollCreate];
    }
    return self;
}


- (void)mainViewCreate{

    ViewInMainImage *profileView = [[ViewInMainImage alloc] initWithFrame:CGRectMake(0, 0, self.frame.size.width, self.frame.size.height*0.761)];
    [self addSubview:profileView];
    
    [profileView profileDataCenterImageChange];

    

}


- (void)menuScrollCreate{
    CGFloat mainHeight = self.frame.size.height*0.24;
    
    UIScrollView *menuScroll = [[UIScrollView alloc]init];
    menuScroll.frame = CGRectMake(0, 0.76*self.frame.size.height, self.frame.size.width, mainHeight);
    [menuScroll setContentOffset:CGPointMake(0, 0) animated:YES];
    [menuScroll setContentSize:CGSizeMake(mainHeight*5, mainHeight)];
    menuScroll.showsHorizontalScrollIndicator = NO;
    menuScroll.backgroundColor = [UIColor colorWithRed:25/255.0 green:35/255.0 blue:45/255.0 alpha:1.0];
    [self addSubview:menuScroll];
    self.menuScroll = menuScroll;
    
    
    ViewInScrollMenu *country = [[ViewInScrollMenu alloc] initWithFrame:CGRectMake(0, 0, mainHeight, mainHeight) ejectLine:NO];
    [country setImage:@"Flag1" setCount:@"1" setLB:@"country"];
    [menuScroll addSubview:country];
    
    ViewInScrollMenu *trip = [[ViewInScrollMenu alloc] initWithFrame:CGRectMake(mainHeight, 0, mainHeight, mainHeight) ejectLine:NO];
    [trip setImage:@"map1" setCount:@"1" setLB:@"trip"];
    [menuScroll addSubview:trip];
    
    ViewInScrollMenu *dayTraveled = [[ViewInScrollMenu alloc] initWithFrame:CGRectMake(mainHeight*2, 0, mainHeight, mainHeight) ejectLine:NO];
    [dayTraveled setImage:@"calender1" setCount:@"1" setLB:@"day traveled"];
    [menuScroll addSubview:dayTraveled];
    
    ViewInScrollMenu *kmCovered = [[ViewInScrollMenu alloc] initWithFrame:CGRectMake(mainHeight*3, 0, mainHeight, mainHeight) ejectLine:NO];
    [kmCovered setImage:@"protractor" setCount:@"1" setLB:@"KM covered"];
    [menuScroll addSubview:kmCovered];
    
    ViewInScrollMenu *stepsTotal = [[ViewInScrollMenu alloc] initWithFrame:CGRectMake(mainHeight*4, 0, mainHeight, mainHeight) ejectLine:YES];
    [stepsTotal setImage:@"PixelKit_location_icon" setCount:@"1" setLB:@"steps total"];
    [menuScroll addSubview:stepsTotal];
    
}

@end

