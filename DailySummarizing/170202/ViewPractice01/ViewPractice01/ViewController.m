//
//  ViewController.m
//  ViewPractice01
//
//  Created by abyssinaong on 2017. 2. 2..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    UIView *myView = [[UIView alloc] initWithFrame:CGRectMake(15, 15, 345, 100)];
    [myView setBackgroundColor:[UIColor blueColor]];
    [self.view addSubview:myView];
    
    
    UIView *myViewUnder = [[UIView alloc] initWithFrame:CGRectMake(15 , self.view.frame.size.height - 115, 345, 100)]; // - 값을 넣으면 위로 올라간다.
    [myViewUnder setBackgroundColor:[UIColor redColor]];
    [self.view addSubview:myViewUnder];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
