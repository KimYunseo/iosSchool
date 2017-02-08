//
//  ViewController.m
//  UIButtonPractice02
//
//  Created by abyssinaong on 2017. 2. 6..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property UIButton *beforeBtn;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    CGFloat widthNum = self.view.frame.size.width;
//    CGFloat heightNum = self.view.frame.size.height;
    UIButton *btn01 = [UIButton buttonWithType:UIButtonTypeCustom];
    btn01.backgroundColor = [UIColor blueColor];
    btn01.frame = CGRectMake(40, 40, (widthNum - 120)/2, 40);
    [btn01 setTitle:@"1번 입니다." forState:UIControlStateNormal];
    [btn01 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [btn01 addTarget:self action:@selector(action:) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *btn02 = [UIButton buttonWithType:UIButtonTypeCustom];
    btn02.backgroundColor = [UIColor blueColor];
    btn02.frame = CGRectMake((widthNum - 140), 40, (widthNum - 120)/2, 40);
    [btn02 setTitle:@"2번 입니다." forState:UIControlStateNormal];
    [btn02 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [btn02 addTarget:self action:@selector(action:) forControlEvents:UIControlEventTouchUpInside];
    
    
    UIButton *btn03 = [UIButton buttonWithType:UIButtonTypeCustom];
    btn03.backgroundColor = [UIColor blueColor];
    btn03.frame = CGRectMake(40, 100, (widthNum - 120)/2, 40);
    [btn03 setTitle:@"3번 입니다." forState:UIControlStateNormal];
    [btn03 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [btn03 addTarget:self action:@selector(action:) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *btn04 = [UIButton buttonWithType:UIButtonTypeCustom];
    btn04.backgroundColor = [UIColor blueColor];
    btn04.frame = CGRectMake((widthNum - 140), 100, (widthNum - 120)/2, 40);
    [btn04 setTitle:@"4번 입니다." forState:UIControlStateNormal];
    [btn04 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [btn04 addTarget:self action:@selector(action:) forControlEvents:UIControlEventTouchUpInside];
    
    
    [self.view addSubview:btn01];
    [self.view addSubview:btn02];
    [self.view addSubview:btn03];
    [self.view addSubview:btn04];
    
}

- (void)action:(UIButton *)sender
{
    
//    //이전에 있는것을 원복
//    [self.beforeBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal ];
//    
//    //현재를 변경
//    
//    [sender setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
//    
//    //이전거에 현재를 저장
//    self.beforeBtn = sender;
//    

    
    
    
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
