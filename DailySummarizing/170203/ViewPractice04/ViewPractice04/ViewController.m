//
//  ViewController.m
//  ViewPractice04
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
    
    //연습문제 4
    
    UIView *mainView = [[UIView alloc] initWithFrame:CGRectMake(10, 30, self.view.frame.size.width-20, 80)];
    [mainView setBackgroundColor:[UIColor whiteColor]];
    mainView.layer.borderWidth = 1;
    mainView.layer.borderColor = [UIColor blackColor].CGColor;
    [self.view addSubview:mainView];
    
    UIImageView *leftView = [[UIImageView alloc] initWithFrame:CGRectMake(10, 10, 60, 60)];
//    [leftView setBackgroundColor:[UIColor blueColor]];
    leftView.image = [UIImage imageNamed:@"주작개구리.jpg"];
    [leftView setContentMode:UIViewContentModeScaleToFill];
    [mainView addSubview:leftView];
    
    UILabel *rightUpView = [[UILabel alloc] initWithFrame:CGRectMake(80, 10, mainView.frame.size.width-90, 30)];
//    [rightUpView setBackgroundColor:[UIColor blueColor]];
    rightUpView.text = @"주작 개구리";
    rightUpView.font = [UIFont systemFontOfSize:30];
    rightUpView.textColor = [UIColor redColor];
    //    rightUpView.textColor = [UIColor colorWithRed:200/255.0 green:188/255.0 blue:140/255.0 alpha:1];
    [rightUpView setTextAlignment:NSTextAlignmentLeft];
    [mainView addSubview:rightUpView];
    
    UILabel *rightDownView = [[UILabel alloc] initWithFrame:CGRectMake(80, 60, mainView.frame.size.width-90, 10)];
//    [rightDownView setBackgroundColor:[UIColor redColor]];
    rightDownView.text = @"주작임! 암튼 주작임!!!!";
    rightDownView.font = [UIFont systemFontOfSize:10];
    rightDownView.textColor = [UIColor redColor];
    [mainView addSubview:rightDownView];
    
    
    //버튼 만드는것
    UIButton *testBtn = [UIButton buttonWithType:UIButtonTypeCustom]; //클래스 메소드로 해야 custom으로 할 수 있다.
    testBtn.frame = CGRectMake(self.view.frame.size.width/2 - 50, self.view.frame.size.height/2 -30, 100, 60);
    [testBtn setTitle:@"주작 인정?" forState:UIControlStateNormal]; //노멀 상태(눌리지 않은 상태)에서 title 제목 설정
    [testBtn setTitleColor:[UIColor redColor] forState:UIControlStateNormal]; //노멀 상태(눌리지 않은 상태)에서 title 제목 색
    [testBtn setTitle:@"ㅋㅋㅋ!" forState:UIControlStateHighlighted]; //누르고 있는 상태애서의 title 제목
    [testBtn setTitleColor:[UIColor brownColor] forState:UIControlStateHighlighted]; // 누르고 있는 상태에서의 title 색
    
    [testBtn addTarget:self action:@selector(didSelectedBtn:) forControlEvents:UIControlEventTouchUpInside];
    // self는 UIControl를 부르는것. 즉, forControlEvents가 일어나면 뷰 컨트롤이 메소드 didSelectedBtn를 실행한다 라는 의미.
    [self.view addSubview:testBtn];
    
//    UIButton *btnOne = [UIButton buttonWithType:UIButtonTypeCustom];
//    btnOne.frame = CGRectMake(self.view.frame.size.width/2 - 50, self.view.frame.size.height/2 -30, 10, 10);
//    [btnOne setTitle:@"1" forState:UIControlStateNormal];
//    
//    
}

- (void)didSelectedBtn:(UIButton *)sender
{
    
    NSLog(@"버튼을 클릭했습니다.");
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
