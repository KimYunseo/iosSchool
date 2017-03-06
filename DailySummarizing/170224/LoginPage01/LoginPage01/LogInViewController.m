//
//  LogInViewController.m
//  LoginPage01
//
//  Created by abyssinaong on 2017. 2. 24..
//  Copyright © 2017년 KimYunseo. All rights reserved.
//

#import "LogInViewController.h"
#import "LoginUIView.h"
#import "DataCenter.h"
#import "ViewController.h"
#import "MainViewController.h"

@interface LogInViewController ()<LoginUIViewDelegate>

@property (nonatomic, weak) LoginUIView *idtext;
@property (nonatomic, weak) LoginUIView *password;
@property (nonatomic, weak) UIView *toolbar;
@property BOOL isUPKeyboard;


@end

@implementation LogInViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    CGFloat m = self.view.frame.size.width;
    CGFloat h = self.view.frame.size.height;
    LoginUIView *idtext = [[LoginUIView alloc] initWithFrame:CGRectMake(0, h/12, m, h/12) setArray:0];
    [self.view addSubview:idtext];
    self.idtext = idtext;
    idtext.tag =0;
    idtext.delegate = self;
    
    LoginUIView *password = [[LoginUIView alloc] initWithFrame:CGRectMake(0, h*2/12+10, m, h/12) setArray:1];
    [self.view addSubview:password];
    self.password = password;
    password.tag =1;
    password.delegate = self;
    
    
    UIButton *login = [UIButton buttonWithType:UIButtonTypeCustom];
    login.frame = CGRectMake(m/2, h*4/12, m/5, h/12);
    [login setTitle:@"Login" forState:UIControlStateNormal];
    [login setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];

    [self.view addSubview:login];
    [login addTarget:self action:@selector(btnaction:) forControlEvents:UIControlEventTouchUpInside];
    
    
    NSLog(@"%@",[[NSUserDefaults standardUserDefaults] objectForKey:@"ID"]);
    NSLog(@"%@",[[NSUserDefaults standardUserDefaults] objectForKey:@"PW"]);
    
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(trackingPost:) name:@"NotiLog" object:nil];
    
    
    UIView *toolbar = [[UIView alloc] init];
    toolbar.frame = CGRectMake(0, h-50, m, 50);
    toolbar.backgroundColor = [UIColor blackColor];
    [self.view addSubview:toolbar];
    self.toolbar =toolbar;
    
    [NSNotificationCenter.defaultCenter addObserver:self selector:@selector(keyboardNoti:) name:UIKeyboardWillShowNotification object:nil ];
    [NSNotificationCenter.defaultCenter addObserver:self selector:@selector(keyboardHideNoti:) name:UIKeyboardWillHideNotification object:nil ];

}



- (void)keyboardNoti:(NSNotification *)noti{
    
    if (!self.isUPKeyboard) {
        CGSize keyboardSize = [[noti.userInfo objectForKey:UIKeyboardFrameEndUserInfoKey] CGRectValue].size;
        
        BOOL ischeck = [[noti.userInfo objectForKey:UIKeyboardIsLocalUserInfoKey ] boolValue];
        NSLog(@"%d",ischeck);
        CGRect originFrame = self.toolbar.frame;
        
        [UIView animateWithDuration:5 animations:^{
            self.toolbar.frame = CGRectMake(originFrame.origin.x, originFrame.origin.y - keyboardSize.height
                                            , originFrame.size.width, originFrame.size.height);
        }];
        self.isUPKeyboard = YES;
    }
    
    
//    [[NSNotificationCenter defaultCenter] removeObserver:self];
    
}

- (void)keyboardHideNoti:(NSNotification *)noti{
    self.toolbar.frame = CGRectMake(0, self.view.frame.size.height - 50, self.view.frame.size.width, 50);
    self.isUPKeyboard = NO;
}




- (void)trackingPost:(NSNotification *)noti{
    NSLog(@"noti objec %@", noti.object);
    NSLog(@"userInfo %@", [noti.userInfo objectForKey:@"VC"]);
    
}




- (void)texTranmit:(LoginUIView *)view{
    if (view.tag == 0) {
        self.idtext.inputTF.text = view.inputTF.text;
        [DataCenter shareDate].iD = self.idtext.inputTF.text;
    } else if (view.tag == 1) {
        
        self.password.inputTF.text = view.inputTF.text;
        [DataCenter shareDate].pW = self.password.inputTF.text;

    }
    
}

- (void)btnaction:(UIButton *)sender {
 
    if([[DataCenter shareDate].iD isEqualToString:[[NSUserDefaults standardUserDefaults] objectForKey:@"ID"]] && [[DataCenter shareDate].pW isEqualToString:[[NSUserDefaults standardUserDefaults] objectForKey:@"PW"]]){
        
        MainViewController *main = [[MainViewController alloc] init];
        [self presentViewController:main animated:YES completion:nil];
        
    } else {
        
        ViewController *vc = [self.storyboard instantiateViewControllerWithIdentifier:@"MainVC"];
        [self presentViewController:vc animated:YES completion:nil];
    }
    
}

-(void)dealloc{
    
    
    
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
