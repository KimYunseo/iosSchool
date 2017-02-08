//
//  ViewController.m
//  ViewPractice02
//
//  Created by abyssinaong on 2017. 2. 3..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //연습문제 2
    
    UIView *topView  = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 64)];
    topView.backgroundColor = [UIColor blueColor];
    [self.view addSubview:topView];
    
    UIView *middleView = [[UIView alloc] init];
    middleView.frame = CGRectMake(0, 64, self.view.frame.size.width, self.view.frame.size.height - 64- 48);
    middleView.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:middleView];
    
    UIView *underView = [[UIView alloc] initWithFrame:CGRectMake(0, self.view.frame.size.height-48, self.view.frame.size.width, 48)];
    [underView setBackgroundColor:[UIColor redColor]];
    [self.view addSubview:underView];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
