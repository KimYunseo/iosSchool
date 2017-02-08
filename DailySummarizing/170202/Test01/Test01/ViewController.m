//
//  ViewController.m
//  Test01
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
    // Do any additional setup after loading the view, typically from a nib.
    // UI 에서 시작하는 부분이 여기다.
    
    UIView *myView  = [[UIView alloc] initWithFrame:CGRectMake(50,50,100,300)]; // 이 객체를 다른 메소드에서 사용하기 위해서는 프로퍼티를  *.m파일의 interface에서 선언해주면 된다.
    myView.backgroundColor = [UIColor blueColor];
//    myView.clipsToBounds = YES;
    [self.view addSubview:myView];
    
    UIView *subView = [[UIView alloc] init];
    subView.frame = CGRectMake(10, 30, 200, 200); // 넘치는 부분을 자르고 싶을 때는 찾아 보기
    [subView setBackgroundColor:[UIColor redColor]]; //  ==   myView.backgroundColor = [UIColor blueColor];
    [myView addSubview:subView];
    
    
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
