//
//  ViewController.m
//  ViewPractice03
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
    
    //연습문제 3
    
    UIView *upView = [[UIView alloc] initWithFrame:CGRectMake(self.view.frame.size.width/2 - 50, self.view.frame.size.height/2 -50, 90, 10)];
    [upView setBackgroundColor:[UIColor blackColor]];
    [self.view addSubview:upView];
    
    UIView *rightView = [[UIView alloc] initWithFrame:CGRectMake(self.view.frame.size.width/2 +40, self.view.frame.size.height/2 -50 , 10, 90)];
    
    [rightView setBackgroundColor:[UIColor blueColor]];
    [self.view addSubview:rightView];
    
    UIView *downView = [[UIView alloc] initWithFrame:CGRectMake(self.view.frame.size.width/2 - 40, self.view.frame.size.height/2 +40 , 90, 10)];
    [downView setBackgroundColor:[UIColor yellowColor]];
    [self.view addSubview:downView];
    
    UIView *leftView = [[UIView alloc] initWithFrame:CGRectMake(self.view.frame.size.width/2 -50, self.view.frame.size.height/2 -40, 10, 90)];
    [leftView setBackgroundColor:[UIColor redColor]];
    [self.view addSubview:leftView];
    
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
