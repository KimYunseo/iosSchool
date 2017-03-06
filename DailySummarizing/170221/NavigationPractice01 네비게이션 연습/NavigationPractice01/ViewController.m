//
//  ViewController.m
//  NavigationPractice01
//
//  Created by abyssinaong on 2017. 2. 21..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import "ViewController.h"
#import "SettingViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    

    self.navigationItem.titleView = [[UIView alloc] initWithFrame:CGRectMake(0, 20, 200 , 44)];
    UIImageView *img = [[UIImageView alloc] initWithFrame:CGRectMake(0, 10, 24, 24)];
    img.image = [UIImage imageNamed:@"point"];
    UILabel *titleLB = [[UILabel alloc] initWithFrame:CGRectMake(25, 10, 175, 24)];
    titleLB.text = @"POLARSTEPS";
    titleLB.textColor = [UIColor blackColor];
    titleLB.textAlignment = NSTextAlignmentCenter;
    titleLB.font = [UIFont boldSystemFontOfSize:20];
    [self.navigationItem.titleView addSubview:img];
    [self.navigationItem.titleView addSubview:titleLB];
 
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(0, 2, 20, 20);
    [btn setBackgroundImage:[UIImage imageNamed:@"settings-icon3"] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(actionBtn:) forControlEvents:UIControlEventTouchUpInside];
    
    
    UIBarButtonItem *settingItem = [[UIBarButtonItem alloc] initWithCustomView:btn];
    self.navigationItem.leftBarButtonItem = settingItem;
    
    UIButton *rightBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    rightBtn.frame = CGRectMake(0, 2, 20, 20);
    [rightBtn setTitle:@"+" forState:UIControlStateNormal];
    [rightBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    
    
    UIBarButtonItem *plusItem =[[UIBarButtonItem alloc] initWithCustomView:rightBtn];
    self.navigationItem.rightBarButtonItem = plusItem;

    
    
}

- (void)actionBtn:(UIButton *)sender
{
    
    SettingViewController *setting = [[SettingViewController alloc] init];
    [self.navigationController pushViewController:setting animated:YES];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
