//
//  ViewController.m
//  UIButtonPractice01
//
//  Created by abyssinaong on 2017. 2. 6..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property UIButton *btnStatus;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    
    UIButton *btn01 = [UIButton buttonWithType:UIButtonTypeCustom];
    btn01.backgroundColor = [UIColor blueColor];
    [btn01 setTitle:@"1번 버튼" forState:UIControlStateNormal];
    [btn01 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [btn01 setTitle:@"1번 버튼" forState:UIControlStateHighlighted];
    [btn01 setTitleColor:[UIColor whiteColor] forState:UIControlStateHighlighted];
    btn01.frame = CGRectMake(40, 40, 100, 40);
    [btn01 addTarget:self action:@selector(actionBtn:) forControlEvents:UIControlEventTouchUpInside];

    UIButton *btn02 = [UIButton buttonWithType:UIButtonTypeCustom];
    btn02.backgroundColor = [UIColor blueColor];
    [btn02 setTitle:@"2번 버튼" forState:UIControlStateNormal];
    [btn02 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [btn02 setTitle:@"2번 버튼" forState:UIControlStateHighlighted];
    [btn02 setTitleColor:[UIColor whiteColor] forState:UIControlStateHighlighted];
    btn02.frame = CGRectMake(self.view.frame.size.width-140, 40, 100, 40);
    [btn02 addTarget:self action:@selector(actionBtn:) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *btn03 = [UIButton buttonWithType:UIButtonTypeCustom];
    btn03.backgroundColor = [UIColor blueColor];
    [btn03 setTitle:@"3번 버튼" forState:UIControlStateNormal];
    [btn03 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [btn03 setTitle:@"3번 버튼" forState:UIControlStateHighlighted];
    [btn03 setTitleColor:[UIColor whiteColor] forState:UIControlStateHighlighted];
    btn03.frame = CGRectMake(40, 90, 100, 40);
    [btn03 addTarget:self action:@selector(actionBtn:) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *btn04 = [UIButton buttonWithType:UIButtonTypeCustom];
    btn04.backgroundColor = [UIColor blueColor];
    [btn04 setTitle:@"4번 버튼" forState:UIControlStateNormal];
    [btn04 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [btn04 setTitle:@"4번 버튼" forState:UIControlStateHighlighted];
    [btn04 setTitleColor:[UIColor whiteColor] forState:UIControlStateHighlighted];
    btn04.frame = CGRectMake(self.view.frame.size.width-140, 90, 100, 40);
    [btn04 addTarget:self action:@selector(actionBtn:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:btn01];
    [self.view addSubview:btn02];
    [self.view addSubview:btn03];
    [self.view addSubview:btn04];
    
}


- (void)actionBtn:(UIButton *)sender
{
    
    //이전 버튼 원복
    [self.btnStatus setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    
    //현재 버튼 변경
    [sender setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    
    //현재 버튼을 이전버튼으로 저장
    self.btnStatus=sender;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
