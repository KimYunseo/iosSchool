//
//  ViewController.m
//  ViewPractice02
//
//  Created by abyssinaong on 2017. 2. 5..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()

@end

@implementation ViewController 


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.wNum = self.view.frame.size.width;
    self.hNum = self.view.frame.size.height;
    
    UIView *mainView = [[UIView alloc]initWithFrame:CGRectMake(10, 40, self.wNum-20, self.hNum-50)];
    mainView.backgroundColor = [UIColor blackColor];
    [self.view addSubview:mainView];
    
    
    UIView *subView = [[UIView alloc] initWithFrame:CGRectMake(20, 20, 150, 250)];
    subView.backgroundColor = [UIColor yellowColor];
    [mainView addSubview:subView];
    
    self.removeView = [[UIView alloc] initWithFrame:CGRectMake(-20, -20, self.wNum-200, self.hNum-300)];
    self.removeView.backgroundColor = [UIColor whiteColor];
    [subView addSubview:self.removeView];
    
    self.btn = [UIButton buttonWithType:UIButtonTypeCustom];
    self.btn.frame = CGRectMake(100, self.hNum -150,50 , 50);
    [self.btn setTitle:@"TTTTT" forState:UIControlStateNormal];
    [self.btn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [self.btn setTitle:@"OOOOO" forState:UIControlStateHighlighted];
    [self.btn setTitleColor:[UIColor blueColor] forState:UIControlStateHighlighted];
    [self.btn setBackgroundColor:[UIColor whiteColor]];
    [self.btn addTarget:self action:@selector(removeView:) forControlEvents:UIControlEventTouchUpInside];
    [mainView addSubview:self.btn];
    
    
    //캐락터 능력치 값 수정 테이블 기본 뷰
    self.nView01 = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.wNum, self.hNum)];
    self.nView01.backgroundColor = [UIColor blueColor];
 
    //케립터 이미지 뷰
    CGRect imgSize = CGRectMake(40, 40, 150, 300);
    self.img1 = [[UIImageView alloc] initWithFrame:imgSize];
    self.img1.image = [UIImage imageNamed:[ViewController randomNamed]];
    [self.img1 setContentMode:UIViewContentModeScaleAspectFit];
    
    //케릭터 버튼
    self.charcStr = [UIButton buttonWithType:UIButtonTypeCustom];
    self.charcStr.frame = CGRectMake(self.nView01.frame.size.width-60, 40, 40, 40);
    
    [self.charcStr setTitle:@"힘" forState:UIControlStateNormal];
    [self.charcStr setTitle:@"눌렀다." forState:UIControlStateHighlighted];
    
}

- (void)removeView:(UIButton *)sender
{
    
    [self.removeView removeFromSuperview];

    [self.view addSubview:self.nView01];
    [self.nView01 addSubview:self.img1];
    [self.nView01 addSubview:self.charcStr];
}


+ (NSString *)randomNamed
{
    NSString *charctorName[] ={@"cubeMoa.jpg",@"diabllo.jpg",@"jupiter.jpg",@"kalcas.jpg",@"panteaon.jpg",@"tanatos.jpg",@"midas.jpg",@"tot.jpg",@"aten.jpg",@"pennil.jpg"};
    
    NSInteger ranNum = arc4random() %10 -1 ;
    
    if (ranNum >= 10 ||ranNum <0) {
        ranNum = 9;
    }
    
    NSString *randomCharctor = charctorName[ranNum];
    NSLog(@"%@",randomCharctor);
    
    return randomCharctor;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
