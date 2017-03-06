//
//  ViewController.m
//  SceenTransition02
//
//  Created by abyssinaong on 2017. 2. 20..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import "ViewController.h"
#import "CustomView.h"

@interface ViewController () <CustomViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    CustomView *mainView = [[CustomView alloc] initWithFrame:self.view.bounds];
    mainView.delegate = self;
    
    [self.view addSubview:mainView];
    
    
}

- (void)willTouchButton {
    
    NSLog(@"clickeD!!!");
    
}

//- (void)btnAction:(UIButton *)sender{
//    NSLog(@"gkgkkg");
//    
//}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
