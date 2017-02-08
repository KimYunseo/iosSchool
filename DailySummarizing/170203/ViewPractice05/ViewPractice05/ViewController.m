//
//  ViewController.m
//  ViewPractice05
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
    
    
    //같은 레이어에 있다고 하더라도 뷰의 작성 순서에 따라 층이 차이가 난다.
    
    //UI에서 생성된 객체는 같은 주소를 참조하여 뿌린다고 하더라도 마지막 참조에 연결되어 출력된다.
    //객체 하나를 한번에 뿌리는것을 막아놓은것으로 보인다.
    
    //
    UIView *mainMiddleView  = [[UIView alloc] initWithFrame:CGRectMake(0, 168, self.view.frame.size.width, 100)];
    [mainMiddleView setBackgroundColor:[UIColor brownColor]];
    [self.view addSubview:mainMiddleView];
    
    
    // mainDownView는 underelftViem와 underelftView2,3,4의 super 이다.
    UIView *mainDownView = [[UIView alloc] initWithFrame:CGRectMake(0, 268, self.view.frame.size.width, 45)];
    [mainDownView setBackgroundColor:[UIColor grayColor]];
    [self.view addSubview:mainDownView];
    
    //underelftView는 innerLeftView1 와 innerLeftView2의 super다.
    UIView *underelftView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width/4, 45)];
    [underelftView setBackgroundColor:[UIColor blueColor]];
    [mainDownView addSubview:underelftView];
    
    UIView *innerLeftView1 = [[UIView alloc]initWithFrame:CGRectMake(5, 5, underelftView.frame.size.width -10, 15)];
    [innerLeftView1 setBackgroundColor:[UIColor whiteColor]];
    [underelftView addSubview:innerLeftView1];
    
    UIView *innerLeftView2 = [[UIView alloc]initWithFrame:CGRectMake(5, 25, underelftView.frame.size.width -10, 15)];
    [innerLeftView2 setBackgroundColor:[UIColor whiteColor]];
    [underelftView addSubview:innerLeftView2];
    //
    
    //underelftView2는 innerLeftView3 와 innerLeftView4의 super다.
    UIView *underelftView2 = [[UIView alloc] initWithFrame:CGRectMake(self.view.frame.size.width/4, 0, self.view.frame.size.width/4, 45)];
    [underelftView2 setBackgroundColor:[UIColor redColor]];
    [mainDownView addSubview:underelftView2];
    
    UIView *innerLeftView3 = [[UIView alloc]initWithFrame:CGRectMake(5, 5, underelftView2.frame.size.width -10, 15)];
    [innerLeftView3 setBackgroundColor:[UIColor whiteColor]];
    [underelftView2 addSubview:innerLeftView3];
    
    UIView *innerLeftView4 = [[UIView alloc]initWithFrame:CGRectMake(5, 25, underelftView2.frame.size.width -10, 15)];
    [innerLeftView4 setBackgroundColor:[UIColor whiteColor]];
    [underelftView2 addSubview:innerLeftView4];
    
    //underelftView3는 innerLeftView5 와 innerLeftView6의 super다.
    UIView *underelftView3 = [[UIView alloc] initWithFrame:CGRectMake(self.view.frame.size.width/2, 0, self.view.frame.size.width/4, 45)];
    [underelftView3 setBackgroundColor:[UIColor yellowColor]];
    [mainDownView addSubview:underelftView3];
    
    UIView *innerLeftView5 = [[UIView alloc]initWithFrame:CGRectMake(5, 5, underelftView3.frame.size.width -10, 15)];
    [innerLeftView5 setBackgroundColor:[UIColor whiteColor]];
    [underelftView3 addSubview:innerLeftView5];
    
    UIView *innerLeftView6 = [[UIView alloc]initWithFrame:CGRectMake(5, 25, underelftView3.frame.size.width -10, 15)];
    [innerLeftView6 setBackgroundColor:[UIColor whiteColor]];
    [underelftView3 addSubview:innerLeftView6];
    

    //underelftView4는 innerLeftView7 와 innerLeftView8의 super다.
    UIView *underelftView4 = [[UIView alloc] initWithFrame:CGRectMake(3 * self.view.frame.size.width/4, 0, self.view.frame.size.width/4, 45)];
    [underelftView4 setBackgroundColor:[UIColor blackColor]];
    [mainDownView addSubview:underelftView4];
    
    UIView *innerLeftView7 = [[UIView alloc]initWithFrame:CGRectMake(5, 5, underelftView4.frame.size.width -10, 15)];
    [innerLeftView7 setBackgroundColor:[UIColor whiteColor]];
    [underelftView4 addSubview:innerLeftView7];
    
    UIView *innerLeftView8 = [[UIView alloc]initWithFrame:CGRectMake(5, 25, underelftView4.frame.size.width -10, 15)];
    [innerLeftView8 setBackgroundColor:[UIColor whiteColor]];
    [underelftView4 addSubview:innerLeftView8];
    

    //mainUpView는 centerUpView, centerMiddleView, centerDownView의 super이다.
    UIView *mainUpView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 168)];
    [mainUpView setBackgroundColor:[UIColor blackColor]];
    [self.view addSubview:mainUpView];
    
    UIView *centerUpView =[[UIView alloc] initWithFrame:CGRectMake(mainUpView.frame.size.width/2 -40, 128, 80, 80)];
    [centerUpView setBackgroundColor:[UIColor redColor]];
    [mainUpView addSubview:centerUpView];
    
    UIView *centerMiddleView = [[UIView alloc] initWithFrame:CGRectMake(mainUpView.frame.size.width/2 -40, 211, 80, 25)];
    [centerMiddleView setBackgroundColor:[UIColor blueColor]];
    [mainUpView addSubview:centerMiddleView];
    
    UIView *centerDownView = [[UIView alloc] initWithFrame:CGRectMake(mainUpView.frame.size.width/2 -40, 238, 80, 13)];
    [centerDownView setBackgroundColor:[UIColor yellowColor]];
    [mainUpView addSubview:centerDownView];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
