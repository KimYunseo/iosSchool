//
//  ViewController.m
//  ViewPractice02
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
    
    UIView *myView = [[UIView alloc] initWithFrame:CGRectMake(15, 15, self.view.frame.size.width -30 , self.view.frame.size.height -30)];
    [myView setBackgroundColor:[UIColor blueColor]];
    [self.view addSubview:myView];
    
    UIView *subView1 = [[UIView alloc] init];
    subView1.frame = CGRectMake(15, 15, myView.frame.size.width -30 , myView.frame.size.height -30);
    subView1.backgroundColor = [UIColor redColor];
    [myView addSubview:subView1];
    
    UIView *subView2 = [[UIView alloc] initWithFrame:CGRectMake(15, 15, subView1.frame.size.width -30, subView1.frame.size.height -30)];
    [subView2 setBackgroundColor:[UIColor greenColor]];
    [subView1 addSubview:subView2];
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
