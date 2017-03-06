//
//  SecondViewController.m
//  ScreenTrPractice01
//
//  Created by abyssinaong on 2017. 2. 20..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIButton *backtBtn = [[UIButton alloc] initWithFrame:CGRectMake(30, 100, 100, 40)];
    [backtBtn addTarget:self action:@selector(onScaledBtn:) forControlEvents:UIControlEventTouchUpInside];
    [backtBtn setTitle:@"BACK" forState:UIControlStateNormal];
    [backtBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self.view addSubview:backtBtn];
}


- (void)onScaledBtn:(UIButton *)sender
{
    
//    [self dismissViewControllerAnimated:YES completion:nil];
    [self.navigationController popViewControllerAnimated:YES];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
