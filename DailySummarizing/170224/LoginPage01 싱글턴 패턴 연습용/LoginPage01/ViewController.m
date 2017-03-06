//
//  ViewController.m
//  LoginPage01
//
//  Created by abyssinaong on 2017. 2. 24..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import "ViewController.h"
#import "LoginUIView.h"
#import "DataCenter.h"
#import "LogInViewController.h"
#import "MainViewController.h"


@interface ViewController ()<LoginUIViewDelegate>
@property (nonatomic , weak) LoginUIView *idView;
@property (nonatomic , weak) LoginUIView *pwView;
@property (nonatomic , weak) LoginUIView *rePWView;
@property (nonatomic , weak) UIButton *cancelBtn;
@property (nonatomic , weak) UIButton *confirmBtn;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    CGFloat m = self.view.frame.size.width;
    CGFloat h = self.view.frame.size.height;
    LoginUIView *idView = [[LoginUIView alloc] initWithFrame:CGRectMake(0, h/12, m, h/12) setArray:0];
    [self.view addSubview:idView];
    idView.delegate = self;
    idView.tag = 0;
    self.idView = idView;
    
    LoginUIView *pwView = [[LoginUIView alloc] initWithFrame:CGRectMake(0, h*2/12+10, m, h/12) setArray:1];
    [self.view addSubview:pwView];
    pwView.tag =1;
    pwView.delegate =self;
    self.pwView = pwView;
    
    LoginUIView *rePWView = [[LoginUIView alloc] initWithFrame:CGRectMake(0, h*3/12+20, m, h/12) setArray:2];
    [self.view addSubview:rePWView];
    rePWView.tag = 2;
    rePWView.delegate = self;
    self.rePWView = rePWView;
    
    UIButton *cancelBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    cancelBtn.frame = CGRectMake(10, h*4/12+30, m/7, h/12);
    [self.view addSubview:cancelBtn];
    self.cancelBtn = cancelBtn;
    cancelBtn.tag =3;
    [cancelBtn setTitle:@"CANCEL" forState:UIControlStateNormal];
    cancelBtn.backgroundColor = [UIColor blackColor];
    [cancelBtn addTarget:self action:@selector(cancelBtn:) forControlEvents:UIControlEventTouchUpInside];
    
    
    UIButton *confirmBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    confirmBtn.frame = CGRectMake(m/2+10, h*4/12+30, m/7, h/12);
    [self.view addSubview:confirmBtn];
    [confirmBtn setTitle:@"confirm" forState:UIControlStateNormal];
    confirmBtn.backgroundColor = [UIColor blackColor];
    self.confirmBtn =confirmBtn;
    confirmBtn.tag = 4;
    
    [confirmBtn addTarget:self action:@selector(reciveTextSet:) forControlEvents:UIControlEventTouchUpInside];
    
    
    
    
}


- (void)texTranmit:(LoginUIView *)view{
    if (view.tag == 0) {
        [DataCenter shareDate].iD = self.idView.inputTF.text;
    } else if (view.tag == 1) {
        [DataCenter shareDate].pW = self.pwView.inputTF.text;
    } else if (view.tag == 2) {
        [DataCenter shareDate].repw = self.rePWView.inputTF.text;
    }
    
}

- (BOOL)isEqualPW{

    return [[DataCenter shareDate].pW isEqualToString:[DataCenter shareDate].repw];
}

- (void)reciveTextSet:(UIButton *)sender
{
    if (sender == self.confirmBtn) {
        NSLog(@"push!!");
        
        NSLog(@"%@", [DataCenter shareDate].iD);
        NSLog(@"%@", [DataCenter shareDate].pW);
        NSLog(@"%@", [DataCenter shareDate].repw);
        NSLog(@"%d", [self isEqualPW]);
        
        if ([self isEqualPW]) {
            [[NSUserDefaults standardUserDefaults] setObject:[DataCenter shareDate].iD forKey:@"ID"];
            [[NSUserDefaults standardUserDefaults] setObject:[DataCenter shareDate].pW forKey:@"PW"];
            LogInViewController *loginVC = [[LogInViewController alloc] init];
            [self presentViewController:loginVC animated:YES completion:nil];
            
            
            NSLog(@"%@", [[NSUserDefaults standardUserDefaults] objectForKey:@"ID"]);
            NSLog(@"%@", [[NSUserDefaults standardUserDefaults] objectForKey:@"PW"]);
        }

    }
    
}

- (void)cancelBtn:(UIButton *)sender{
    
    if(sender == self.cancelBtn){
        LogInViewController *loginVC = [[LogInViewController alloc] init];
        [self presentViewController:loginVC animated:YES completion:nil];
        [self postMethod];
    }
}

- (void)postMethod{
    [[NSNotificationCenter defaultCenter] postNotificationName:@"NotiLog" object:@"하하" userInfo:@{@"VC":@"ViewController"}];
}


- (void)dealloc{
    
    [[NSNotificationCenter defaultCenter] removeObserver:self];
    NSLog(@"디얼록 됨");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
