//
//  ViewController.m
//  ScreenTrPractice01
//
//  Created by abyssinaong on 2017. 2. 20..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"
#import "XibViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIButton *nextBtn = [[UIButton alloc] initWithFrame:CGRectMake(30, 100, 100, 40)];
    [nextBtn addTarget:self action:@selector(onScaledBtn:) forControlEvents:UIControlEventTouchUpInside];
    [nextBtn setTitle:@"next" forState:UIControlStateNormal];
    [nextBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self.view addSubview:nextBtn];
}

- (void)onScaledBtn:(UIButton *)sender
{
    
    //1. 스토리보드 객체 만들기
//    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];
    
    //2. 뷰컨트롤러 객체 만들기
    SecondViewController *sVC = [self.storyboard instantiateViewControllerWithIdentifier:@"SecondViewController"];
    
    //3. 페이지 전환
    //[self presentViewController:sVC animated:YES completion:nil];
    
    /********** xib *********/
//
//    XibViewController *xVC = [[XibViewController alloc] initWithNibName:@"XibViewController" bundle:[NSBundle mainBundle]];
    
//    [sVC setModalTransitionStyle:UIModalTransitionStylePartialCurl];
//    [self presentViewController:sVC animated:YES completion:nil];

    [self.navigationController pushViewController:sVC animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
